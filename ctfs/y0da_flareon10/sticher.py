# Function Stitcher
#
# AllThingsIDA (c) Elias Bachaalany
#

import idc, idaapi, idautils
import copy

# ---------------------------------------------------------------------------
# Conditional jump (Jcc) instructions
JCC_INSTRUCTIONS = set(
    (idaapi.NN_ja, idaapi.NN_jae, idaapi.NN_jb, idaapi.NN_jbe, idaapi.NN_jc, 
     idaapi.NN_je, idaapi.NN_jg, idaapi.NN_jge, idaapi.NN_jl, idaapi.NN_jle, 
     idaapi.NN_jna, idaapi.NN_jnae, idaapi.NN_jnb, idaapi.NN_jnbe, idaapi.NN_jnc, 
     idaapi.NN_jne, idaapi.NN_jng, idaapi.NN_jnge, idaapi.NN_jnl, idaapi.NN_jnle, 
     idaapi.NN_jno, idaapi.NN_jnp, idaapi.NN_jns, idaapi.NN_jnz, idaapi.NN_jo, 
     idaapi.NN_jp, idaapi.NN_jpe, idaapi.NN_jpo,  idaapi.NN_js, idaapi.NN_jz))

CALL_INSTRUCTIONS = set((idaapi.NN_call, idaapi.NN_callfi, idaapi.NN_callni))

LOOP_INSTRUCTIONS = set(
     (idaapi.NN_loopw,        idaapi.NN_loop,   
      idaapi.NN_loopd,        idaapi.NN_loopq,  
      idaapi.NN_loopwe,       idaapi.NN_loope,  
      idaapi.NN_loopde,       idaapi.NN_loopqe, 
      idaapi.NN_loopwne,      idaapi.NN_loopne, 
      idaapi.NN_loopdne,      idaapi.NN_loopqne))

# ------------------------------------------------------------
def is_call(insn):
    """Is a call instruction?"""
    return (insn.itype in CALL_INSTRUCTIONS) or idaapi.is_call_insn(insn)

def is_jcc(insn):
    """Is conditional branch?
    refer to intel.hpp/inline bool insn_jcc(const insn_t &insn)
    """
    return insn.itype in JCC_INSTRUCTIONS

def is_loop(insn):
    return insn.itype in LOOP_INSTRUCTIONS

def is_bp(insn):
    return insn.itype == idaapi.NN_int3

def is_ret(insn, strict=True):
    """Is the instruction a "return"?"""
    return idaapi.is_ret_insn(insn, strict)

def is_jmp_indirect(insn):
    """Is this an indirect jump?"""
    return idaapi.is_indirect_jump_insn(insn)

def is_jmp(insn):
    """Is this an indirect jump?"""
    return insn.itype == idaapi.NN_jmp

# ---------------------------------------------------------------------------
PF_NEW_CHUNK    = 0x01
PF_DISASM       = 0x02
PF_CHUNK_END    = 0x04
PF_NEXT_CHUNK   = 0x08
PF_OTHER        = 0x10
PF_CALLED_FUNCS = 0x20
PF_SPLIT        = 0x40
PF_STACK        = 0x80
PF_SEEN         = 0x100
PF_ALL          = 0xFFFF

# ---------------------------------------------------------------------------
class chunk_t:
    fl_is_ret  = 0x1
    fl_is_jmpi = 0x2
    fl_is_jcc  = 0x4
    fl_is_jmp  = 0x8
    fl_is_ud   = 0x10
    fl_is_bp   = 0x20

    def __init__(self, start, end, flags=0, target=0):
        self.start  = start
        self.end    = end
        self.flags  = flags
        self.target = target

    def __lt__(self, other):
        return self.start < other.start

# ---------------------------------------------------------------------------
def build_chunks(
        start_ea, 
        /,
        pf=0, 
        captured_calls=None, 
        ignore_errors=True, 
        max_blocks=-1, 
        bp_ends_block=False):
    """Given a supposed function start, return the function head and proper chunks"""
    seen_chunks = set()
    stack = [start_ea]
    chunks = []
    seen = set()
    instructions = {}

    iblock = 0
    while stack:
        chunk_start = ea = stack.pop()
        if chunk_start in seen:
            if pf & PF_SEEN:
                print(f" SEEN: {chunk_start:x}")
            continue

        seen.add(chunk_start)
        iblock += 1
        chunk_end = 0
        chunk_flags = 0
        chunk_target = 0

        if pf & PF_NEW_CHUNK:
            print(f"NEW_CHUNK #{iblock}: {chunk_start:x}")

        while True:
            inst = idautils.DecodeInstruction(ea)
            if inst is None:
                if ignore_errors:
                    chunk_flags |= chunk_t.fl_is_ud
                    break
                else:
                    return (False, f"{ea:x}: Failed to decode instruction")

            instructions[inst.ea] = (inst.itype, inst.size)
            # Each new instruction can be the end of a chunk
            ea = chunk_end = inst.ea + inst.size

            if pf & PF_DISASM:
                print(f"   {inst.ea:x} - {idc.GetDisasm(inst.ea)}")

            if captured_calls is not None and is_call(inst):
                captured_calls.append((inst.ea, inst.addr))
                if pf & PF_CALLED_FUNCS:
                    print(f"   CALL !:{inst.ea:x}")

            # Fall thru cases
            if is_jcc(inst):
                chunk_flags |= chunk_t.fl_is_jcc
                chunk_target = inst.Op1.addr

                # Two new chunks
                stack.insert(0, inst.Op1.addr)
                stack.insert(0, chunk_end)
                if pf & PF_NEW_CHUNK:
                    print(f"   EXPLORE {inst.Op1.addr:x}, FALLTHRU {chunk_end:x}")
                break
            # Loop
            elif is_loop(inst):
                print(f"untested...test me...")
                # Two new chunks
                stack.insert(0, inst.Op1.addr)
                stack.insert(0, chunk_end)
                if pf & PF_NEW_CHUNK:
                    print(f"   EXPLORE {inst.Op1.addr:x}, FALLTHRU {chunk_end:x}")
                break
            # No fall thru
            elif is_jmp(inst):
                chunk_flags |= chunk_t.fl_is_jmp
                chunk_target = inst.Op1.addr

                stack.insert(0, inst.Op1.addr)
                if pf & PF_NEW_CHUNK:
                    print(f"   EXPLORE {inst.Op1.addr:x}")
                break
            # BP instruction
            elif (bp_ends_block and is_bp(inst)):
                chunk_flags |= chunk_t.fl_is_bp
                if pf & PF_OTHER:
                    print(f"   --> BP {inst.ea:x}")
                break
            # RET does not generate new paths
            elif (b_is_ret := is_ret(inst)) or (is_ijmp := is_jmp_indirect(inst)):
                if b_is_ret:
                    chunk_flags |= chunk_t.fl_is_ret
                elif is_ijmp:
                    chunk_flags |= chunk_t.fl_is_jmpi

                if pf & PF_OTHER:
                    print(f"   --> {'RET' if b_is_ret else 'JMPI'} {inst.ea:x}")
                break

        # New chunk
        if chunk_end != 0:
            chunks.append(chunk_t(
                start=chunk_start, 
                end=chunk_end, 
                flags=chunk_flags, 
                target=chunk_target))
            if pf & PF_CHUNK_END:
                if pf & PF_STACK:
                    stack_str = "[STACK: " + ", ".join((f"{x:x}" for x in stack)) + "]"
                else:
                    stack_str = ''
                print(f"   >[{chunk_start:x} CHUNK #{iblock} END: {chunk_end:x}] {stack_str}")

        if max_blocks > 0 and iblock > max_blocks:
            break

    if pf & PF_OTHER:
        print(f'stack_len: {len(stack)}')

    return (True, (chunks, instructions))

# ---------------------------------------------------------------------------
def merge_chunks(chunks):
    start = 0
    repeat = True
    while repeat:
        repeat = False
        for i in range(start, len(chunks) - 1):
            a0, a1 = chunks[i  ].start, chunks[i  ].end
            b0, b1 = chunks[i+1].start, chunks[i+1].end
            # No overlap?
            if not (a0 <= b0 <= a1):
                start = i + 1
                continue
            # The next segment extends beyond the current, extend the current
            if b1 >= a1:
                chunks[i].end = b1
                chunks[i].flags |= chunks[i+1].flags

            # Since we had overlap, always delete the next one because we merged already
            del chunks[i+1]
            repeat = True
            break


# ---------------------------------------------------------------------------
del_chunk = lambda chunk: idaapi.del_items(chunk.start, 0, chunk.end - chunk.start)

# ---------------------------------------------------------------------------
def create_chunks(chunks, recreate_code=False, verbose=False, merge=True, ignore_errors=False):
    """Given the function stitching information, create proper head and tails"""

    # Before we merge, let's remember the function's start
    func_start = chunks[0].start

    if merge:
        merge_chunks(chunks)

    # After merge, the function initial range might have changed
    # We only care to find the range with the function's start and keep it the first check
    ichunk_start = -2
    for ichunk_start, chunk in enumerate(chunks):
        if chunk.start == func_start:
            break

    if ichunk_start == len(chunks) - 1:
        dump_chunks(chunks, banner="!!INTERNAL ERROR:", footer="<<<<<")
        return (False, "A previous chunk fallsthrough the function start. Revise the algorithm!")

    chunk = chunks[ichunk_start]
        
    del_chunk(chunk)

    # Always create the function first
    f = idaapi.get_func(chunk.start)
    if f is not None:
        idaapi.del_func(f.start_ea)
        if verbose:
            print(f"Deleting existing function {chunk.start:x}")

    if recreate_code:
        idaapi.create_insn(chunk.start)

    # ...create the function
    if verbose:
        print(f"{len(chunks)} chunks. creating function ({chunk.start:x}, {chunk.end:x})")

    if not idaapi.add_func(chunk.start, chunk.end):
        if not idaapi.set_func_end(chunk.start, chunk.end):
            return (False, "Failed to create function %x - %x" % (chunk.start, chunk.end))

    f = idaapi.get_func(chunk.start)
    if f is None:
        return (False, "Failed to retrieve function at %x" % chunk.start)

    f_ea = f.start_ea
    # Now create the tails for that function
    for ichunk, chunk in enumerate(chunks):
        if ichunk == ichunk_start: continue

        if verbose:
            print(f"#{ichunk} creating function tail ({chunk.start:x}, {chunk.end:x})")

        del_chunk(chunk)

        # See if there's a function where there should be a tail
        fchunk = idaapi.get_func(chunk.start)
        if fchunk:
            # See if that's not the same function parent
            if fchunk.start_ea != f_ea:
                # Delete the superfluous function
                idaapi.del_func(fchunk.start_ea)
                if verbose:
                    print(f"{chunk.start:x} deleting superfluous function that should be a tail")

        if recreate_code:
            idaapi.create_insn(chunk.start)

        if not idaapi.append_func_tail(f, chunk.start, chunk.end):
            if ignore_errors:
                continue
            return (False, f"Failed to create function tail ({chunk.start:x}, {chunk.end:x})")

    return (True, f_ea)

# ---------------------------------------------------------------------------
def dump_chunks(chunks, banner=None, footer=None):
    if banner:
        print(banner)

    for i, chunk in enumerate(chunks, start=1):
        print(f"#{i} {chunk.start:x} .. {chunk.end:x} [{chunk.flags:x}] -> {chunk.target:x}")

    if footer:
        print(footer)

# ---------------------------------------------------------------------------
def _test(addr=0x180032701, do_stitch=False):
    global chunks, merged_chunks, instructions
    idaapi.msg_clear()

    f = idaapi.get_func(addr)
    if f:
        addr = f.start_ea

    #pf = PF_ALL & ~(PF_DISASM | PF_NEW_CHUNK | PF_SEEN)
    pf = PF_ALL
    ok, info = build_chunks(addr, pf=pf)
    if not ok:
        print(f'Error: {chunks}')
        return

    chunks, instructions = info

    dump_chunks(chunks, banner="***************chunks****************", footer="----------------")
    merged_chunks = copy.copy(chunks)
    merge_chunks(merged_chunks)
    dump_chunks(merged_chunks, banner="********merged chunks****************", footer="----------------")

    if do_stitch:
        ok, info = create_chunks(chunks, verbose=True, merge=False, recreate_code=True, ignore_errors=True)
        if not ok:
            print(f"error: {info}")
        else:
            print(f'{info:x} restored all chunks!')

# ---------------------------------------------------------------------------
if __name__=='__main__':
    _test(do_stitch=True, addr=idc.here())

