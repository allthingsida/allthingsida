# python_ext

This example shows how to extend Python/IDAPython from your plugin using [pybind11](https://github.com/pybind/pybind11).
It also illustrates how to interface with Python from C++.

Please watch the explanation [video here](https://www.youtube.com/watch?v=jiuF8d8FKO4).

Some important caveats:

- IDA will always initialize IDAPython first on start but it won't fully be initialized yet
- We wait for the `HT_UI`/`ui_initing_database` event and then we extend Python
- When we register our extensions, we pin this plugin DLL so that it won't be unloaded before Python
  - This prevents a crash if someone was holding a reference to our extension methods, classes or objects

- This plugin has only been tested on Windows, with Python 3.11
  - Please feel free to test and make a PR for other platforms
