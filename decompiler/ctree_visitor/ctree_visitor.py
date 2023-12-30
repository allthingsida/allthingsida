# Working with the Decompiler's Ctree in C++ and IDAPython: Learning with Examples
#
# AllThingsIDA (c) by Elias Bachaalany 
#

import idaapi

def display_pseudocode_lines(cfunc):
    sv = cfunc.get_pseudocode()
    for sline in sv:
        print(idaapi.tag_remove(sline.line))

def find_int_literals(cfunc):
    class find_int_literal_visitor(idaapi.ctree_visitor_t):
        def __init__(self):
            idaapi.ctree_visitor_t.__init__(self, idaapi.CV_FAST)

        def visit_expr(self, e):
            if e.op == idaapi.cot_num:
                print(f"{e.ea:x}: found int literal at {e.numval()}")
            return 0

    v = find_int_literal_visitor()
    v.apply_to(cfunc.body, None)

def find_expr(cfunc, cb, flags=idaapi.CV_FAST):
    class visitor_wrapper(idaapi.ctree_visitor_t):
        def __init__(self):
            idaapi.ctree_visitor_t.__init__(self, flags)

        def visit_expr(self, e):
            return cb(e)

    v = visitor_wrapper()
    v.apply_to(cfunc.body, None)
    
def simplified_find_int_literals(cfunc):
    def cb(e):
        if e.op == idaapi.cot_num:
            print(f"{e.ea:x}: found int literal at {e.numval()}")
        return 0
    
    find_expr(cfunc, cb)
    
    # Extreme onliner using the tuple trick:
    # find_expr(
    #     cfunc, 
    #     lambda e: (
    #         print(f"{e.ea:x}: found int literal at {e.numval()}"), 0)[1] 
    #     if e.op == idaapi.cot_num else 0)


def main():
    if not idaapi.init_hexrays_plugin():
        return False

    f = idaapi.get_func(idaapi.get_screen_ea())
    if f is None:
        print("Please position the cursor within a function")
        return True

    cfunc = idaapi.decompile(f)
    if cfunc is None:
        print("Failed to decompile!")
        return True

    idaapi.msg_clear()
    
    display_pseudocode_lines(cfunc)
    #find_int_literals(cfunc)
    #simplified_find_int_literals(cfunc)
    return True

main()
