# Eject IDB Plugin for IDA

This plugin was conceived after discussions with friends about the frustrations of IDA's UI hanging without warning, leaving no opportunity to save ongoing work. Worry no more! `eject_idb`, might *potentially* save the day. It operates by spawning a separate thread that waits for the `Ctrl-Alt-E` hotkey. When activated, the plugin will save your current IDB (Interactive DisAssembler Database) as `original-name-ejected.idb`. You can then safely terminate IDA and restart it using the ejected IDB file, ensuring that none of your work is lost.

**Note: If IDA hung in a way that never calls the UI message loop, this plugin will not be able to save your work. However, in most cases, this plugin should be able to save your work.**

Build this plugin using [ida-cmake](https://github.com/0xeb/ida-cmake). Get binaries from [here](https://github.com/0xeb/allthingsida/releases/tag/04232024).


## How it works

When IDA hangs, on rare occasions, the main UI will be in an infinite loop or waiting on an object. `eject_idb` creates a thread + hidden window + registers hotkey outside the Qt framework. This will still respond even if all threads in IDA are busy.

`eject_plugin` will not work on all occasions because even though it operates in its own thread, because calling `save_database` will still (internally, inside the IDA kernel) call the main thread and thus hang!
Hex-Rays can surely expose a low-level version of the `save_database` function that bypasses any UI calls and directly flushes and saves the database. Unfortunately, I am not aware of such a thing.

Long story short, `eject_plugin` can be the last ditch effort before you kill the IDA instance and hope you don't have much unflushed changes in memory.
