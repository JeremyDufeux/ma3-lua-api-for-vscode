# Process for new Ma3 version

## Documentation files

* Create a new folder in [ma_docs](ma_docs) for the new version, ie: "2.3"
* Copy the software html file with lua content inside, the files are located in `C:\ProgramData\MALightingTechnology\gma3_2.3.2\shared\language\HTML` for version 2.3.2

## Resource files

* Create a new folder in [ressources](ressources) for the new version, ie: "2.3"
* Copy last version files in the new folder
* Change version number at the top of all files
* On the new Ma OnPC version, execute the command: `HelpLua` to generate the file `grandMA3_lua_functions.txt`
* Move the generated file from [C:\ProgramData\MALightingTechnology\gma3_library](C:\ProgramData\MALightingTechnology\gma3_library) to [resources\2.3](resources\2.3)
* Use a software like WinMerge to find API différences between folders in [ma_docs](ma_docs) version folders, use also the release notes
* Make the changement in lua and json files

## Generate enums file

* Run the [utils/generate_enums_file/exportEnumList.lua](utils/generate_enums_file/exportEnumList.lua) on the New Ma Software
* Move the exported file in `D:\Downloads\enumsList.txt` in [utils/generate_enums_file/](utils/generate_enums_file/)
* Run :
  * `cd utils/generate_enums_file`
  * `python .\GenerateLuaEnums.py "2.3"` - where "2.3" is the new version
* A `ma3_enums.lua` file should be generated in the new ressource folder.
* Clean the file of wrong defined terms
  
## Generate dictionary file

* Configure the cspell dictionary:
  * Run :
    * `cd utils/generate_cspell_dictionary`
    * `python .\generate_cspell_dictionary.py "2.3"` - where "2.3" is the new version

## Polish

* Copy and update the last test file in [tests](tests) folder
  * Run the extension test: press `F5`

* Update [CHANGELOG.md](CHANGELOG.md)
* Update [package.json](package.json) -> "version": "x.x.x"
* Export the extension: `vsce package` to test it locally
* Publish the extension: `vsce publish`
