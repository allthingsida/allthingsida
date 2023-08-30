# IDA global information
#
# by Elias Bachaalany (c) AllThingsIDA
#

import time
import idaapi

idaapi.msg_clear()

#print(f"processor name is: {idaapi.cvar.inf.procname}")
print(f"processor name is: {idaapi.inf_get_procname()}")
print(f"Input file type is: {idaapi.inf_get_filetype()}")
print(f"ASM index is: {idaapi.inf_get_asmtype()}")
print(f"Base value: {idaapi.inf_get_baseaddr():x}")
print(f"StartIP={idaapi.inf_get_start_ip():x} and start_ea={idaapi.inf_get_start_ea():x}")
print(f"main_ea is: {idaapi.inf_get_main():x}")
print(f"min and max eas are: {idaapi.inf_get_min_ea():x} , {idaapi.inf_get_max_ea()-1:x}")
print(f"original min and max eas are: {idaapi.inf_get_omin_ea():x} , {idaapi.inf_get_omax_ea()-1:x}")
print(f"suspecious limits are: {idaapi.inf_get_lowoff():x} , {idaapi.inf_get_highoff():x}")
print(f"string prefix is: {idaapi.inf_get_strlit_pref()}")
print(f"string type: {idaapi.inf_get_strtype()}")
print(f"carousel data type bits: {bin(idaapi.inf_get_datatypes())}")
print(f"Compiler id is: {idaapi.inf_get_cc_id()}")
print(f"Input file MD5 is: {idaapi.retrieve_input_file_md5()}")
print(f"Input file SHA256 is: {idaapi.retrieve_input_file_sha256()}")
print(f"IDA database creation version is: {idaapi.get_initial_ida_version()}")
print(f"Notepad text is: <begin>{idaapi.get_ida_notepad_text()}</end>")
print(f'creation time is: {time.strftime("%Y-%m-%d %H:%M:%S", time.gmtime(idaapi.get_idb_ctime()))}')
print(f'Elapsed time: {idaapi.get_elapsed_secs()}')
print(f"Image base is: {idaapi.get_imagebase():x}")
print(f"Input file size: {idaapi.retrieve_input_file_size()}")
print(f"Get input file path: {idaapi.get_input_file_path()}")