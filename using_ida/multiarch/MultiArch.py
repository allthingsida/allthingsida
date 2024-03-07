import idaapi
import capstone

try:
    MY_FORMATS
    print("Unregistering formats")
    idaapi.unregister_data_types_and_formats(MY_FORMATS)
except:
    pass    
    
arm64_dis = capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM)
arm64_dis.detail = True

riscv_dis = capstone.Cs(capstone.CS_ARCH_RISCV, capstone.CS_MODE_RISCV64)
riscv_dis.detail = True

# -----------------------------------------------------------------------
class ARMv8_DataType(idaapi.data_type_t):
    def __init__(self):
        idaapi.data_type_t.__init__(
            self,
            "py_armv8_instruction_dt",
            4,
            "ARM v8 instruction",
            None,
            ".arm_v8",
            idaapi.DTP_NODUP)

class ARMv8_DataFormat(idaapi.data_format_t):
    def __init__(self):
        idaapi.data_format_t.__init__(
            self,
            "py_armv8_instruction",
            4,
            "ARM v8 instruction")

    def printf(self, value, current_ea, operand_num, dtid):
        for i in arm64_dis.disasm(value, current_ea):
            return "%s\t%s" % (idaapi.COLSTR(i.mnemonic, idaapi.SCOLOR_IMPNAME),
                            idaapi.COLSTR(i.op_str, idaapi.SCOLOR_INSN))

# -----------------------------------------------------------------------
class RISCV_DataType(idaapi.data_type_t):
    def __init__(self):
        idaapi.data_type_t.__init__(
            self,
            "py_riscv_instruction_dt",
            4,
            "RISCV instruction",
            None,
            ".riscv",
            idaapi.DTP_NODUP)
       

class RISCV_DataFormat(idaapi.data_format_t):
    def __init__(self):
        idaapi.data_format_t.__init__(
            self,
            "py_riscv_instruction",
            4,
            "RISC-V instruction")

    def printf(self, value, current_ea, operand_num, dtid):
        for i in riscv_dis.disasm(value, current_ea):
            return "%s\t%s" % (idaapi.COLSTR(i.mnemonic, idaapi.SCOLOR_IMPNAME),
                            idaapi.COLSTR(i.op_str, idaapi.SCOLOR_INSN))


# -----------------------------------------------------------------------
# Table of formats and types to be registered/unregistered
# If a tuple has one element then it is the format to be registered with dtid=0
# If the tuple has more than one element, the tuple[0] is the data type and tuple[1:] are the data formats
MY_FORMATS = [
  (ARMv8_DataType(), ARMv8_DataFormat()),
  (RISCV_DataType(), RISCV_DataFormat())
]

# -----------------------------------------------------------------------
if not idaapi.register_data_types_and_formats(MY_FORMATS):
    print("Failed to register types!")
else:
    print("Formats installed!")
