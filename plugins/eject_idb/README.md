# Eject IDB Plugin for IDA

This plugin was conceived after discussions with friends about the frustrations of IDA's UI hanging without warning, leaving no opportunity to save ongoing work. Worry no more! `eject_idb`, might *potentially* save the day. It operates by spawning a separate thread that waits for the `Ctrl-Alt-E` hotkey. When activated, the plugin will save your current IDB (Interactive DisAssembler Database) as `original-name-ejected.idb`. You can then safely terminate IDA and restart it using the ejected IDB file, ensuring that none of your work is lost.

**Note: If IDA hung in a way that never calls the UI message loop, this plugin will not be able to save your work. However, in most cases, this plugin should be able to save your work.**

Build this plugin using [ida-cmake](https://github.com/0xeb/ida-cmake).