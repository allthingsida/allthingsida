import time
import idaapi

# Give the linker time to finish flushing the binary
time.sleep(1)

# Optionally clear the screen:
#idaapi.msg_clear()

# Load your plugin and pass any arg value you want
idaapi.load_and_run_plugin('ctree_visitor', 0)

# Optionally, do post work, etc.