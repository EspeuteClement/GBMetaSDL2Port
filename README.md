# GBMetaSDL2Port
Totally Work in progress

# How to build :
## Windows
1. Install [Mingw](https://sourceforge.net/projects/mingw/files/Installer/) and make sure it's available in your system PATH (to test, open a command line and type `g++`. If something happends, it's ready to go).
2. Download the [SLD2 Development library for Mingw](https://www.libsdl.org/download-2.0.php) and extract the zip somewhere on your computer.
3. Copy the path to where you extracted the Mingw folder (Hint : This folder should contain some `README.txt` files)
4. Install git
4. Clone this repository `git clone ...`
4. Edit the `Makefile` file at the root of the GBMetaSDL2Port folder and change the `SDL_PATH` variable to the path of your SDL2 folder.
5. Open a command line prompt at the root of the GBMetaSDL2Port folder, and type `make`
6. A `build` folder should have been created, containing a file called `out.exe`

## Linux
TODO