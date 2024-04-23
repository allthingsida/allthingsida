# Eject IDB Plugin for IDA

The `eject_idb` plugin was conceived after discussions with friends about the frustrations of IDA's UI hanging without warning or due to programmer errors (like an infinite-loop in their plugin or scripts), leaving no opportunity to save the ongoing work. Worry no more! `eject_idb` might *potentially* save the day.

It operates by spawning a separate thread that waits for the `Ctrl-Alt-E` hotkey. When activated, the plugin will save your current IDB as `original-name-ejected.ext`, then offers to terminate IDA on your behalf.

Build this plugin using [ida-cmake](https://github.com/0xeb/ida-cmake) or get binaries from [here](https://github.com/0xeb/allthingsida/releases/tag/04232024).

**Note: `eject_idb` is not foolproof and might not work in all scenarios, but it has been tested in both pure infinite loops cases (with no UI events dispatching) and in infinite loops cases where the main thread still manages to dispatch UI events.**

## How it works

When/if IDA hangs (either due to a bug in IDA or a programmer error), the main UI will become unresponsive, and thus you won't be able to save your database.
`eject_idb` creates a thread, a hidden window, and registers a hotkey without using the Qt framework, so it remains responsive even if all threads in IDA are busy.

Calling `save_database` will still (internally, inside the IDA kernel) invoke the main thread and thus could cause a hang. To overcome this, `eject_idb` uses UI notification hooks to disable (swallow) all UI events before calling `save_database()` so this operation works.

Long story short, `eject_idb` can be the last ditch effort before you terminate the IDA instance, hoping you don't have many unflushed changes in memory.
