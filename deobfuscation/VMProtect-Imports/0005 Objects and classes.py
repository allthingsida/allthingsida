class obfs_api_t:
    def __init__(self):
        self.caller = idaapi.BADADDR
        """The address of the call instruction."""
        self.target = idaapi.BADADDR
        """The address of the target function (obfuscated)."""
        self.real_target = idaapi.BADADDR
        """The address of the real target function (deobfuscated)."""
        self.trace = []
        """The trace of the obfuscated call leading to the real target."""
        self.sp_delta = idaapi.BADADDR
        """The delta of the stack pointer between the caller and the real target."""
        self.return_address = idaapi.BADADDR
        """The address of the return address of the real target."""


cs = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)

# Create a keystone engine instance (needed for later patching)
ks = keystone.Ks(keystone.KS_ARCH_X86, keystone.KS_MODE_64)
