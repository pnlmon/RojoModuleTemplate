
# RojoModuleTemplate
This repository contain a template for building a library/module with Rojo.

## Setup

To use this template, change the following:

- ``./src/ModuleName`` to your module name
- Replace ``ModuleName`` from ``test.project.json``, ``default.project.json``, ``.gitignore``, ``README.md``


## Installation

To build the place from scratch, use:

```bash
rojo build -o "ModuleName.rbxlx"
```

Next, open `ModuleName.rbxlx` in Roblox Studio and start the Rojo server:

```bash
rojo serve
```

#### Setup Foreman, Wally and Selene (Optional)
First, follow https://github.com/Roblox/foreman#installation to install Foreman. Then, run the following command to install Wally and Selene:

```bash
foreman install
```

```bash
wally install
```
### !! Make sure to comment out ``DevPackages`` and ``Pack`` in ``default.project.json`` and ``test.project.json`` if they are not used !!

## Usage

- ``default.project.json``: Use this file for exporting into production environment
- ``test.project.json``: Use this file for testing/development. This file will include the ``test`` folder, which is not included in the ``default.project.json`` file. This is useful for testing your module, or for including a test suite(TestEZ is recommended, but not included in this template). The main module will be placed inside ``ReplicatedStorage``, with the rest placed inside their respective location(StarterPlayerScripts, ServerScriptService, etc.)

Wally file is included, but not required. Wally packages are located in the modules folder(eg. ``ModuleName.Packages``), and development dependencies are located in the ``ReplicatedStorage.DevPackages``. Foreman is required to use wally.

Selene is included, but not required. Selene is a static analysis tool for Lua. It is recommended to use it to ensure your code is clean and free of errors. It'll be installed with foreman. To run selene, use:

```bash
selene
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)
