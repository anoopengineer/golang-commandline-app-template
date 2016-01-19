## Anoop's Golang "Command Line App" Starter Template ##

This starter pack will help you in starting up a structured commandline app in minutes.

This is integrated with goxc for compiling against multiple Architecture and Operating system.
The VERSION, and BUILD_DATE are automatically populated by goxc.

This also uses godep with GO15VENDOREXPERIMENT enabled to handle dependency management.

1. Edit the `.goxc.json` file to include the application name
1. Use `make godep-save` to save the dependencies.
1. Use `make` to build for windows, linux and mac. The binaries will be available in target directory
1. Added .gitignore already ignores target directory so that you don't accidentally checkin binaries
1. Use `make clean` to delete the target directory
