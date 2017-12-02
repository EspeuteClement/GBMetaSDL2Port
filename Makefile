
### CONFIG
DIR_BUILD = build
SRC_DIR = src

### === ONLY IF YOU ARE ON WINDOWS ===
SDL_PATH = D:\\dev\\lib\\sdl2-mingw\\i686-w64-mingw32
SDL_LIB_PATH = $(SDL_PATH)\\\lib
SDL_INCLUDE_PATH = $(SDL_PATH)\\include
### END CONFIG

CC = g++
FLAG_OUTPUT = -o
FRAG_COMPILE = -c

ifeq ($(OS),Windows_NT) # === WINDOWS COMPILATION ===
    detected_OS := Windows
    LIBRARY = -lmingw32 -L$(SDL_LIB_PATH) -lSDL2main  -lSDL2
    INCLUDES = -I $(SDL_INCLUDE_PATH)

    CMD_MKDIR = mkdir -p
    CMD_RMDIR = rm -rf
else
    detected_OS := $(shell uname -s)
    LIBRARY = -lSDL2main  -lSDL2
    INCLUDES = 
    CMD_MKDIR = mkdir -p
    CMD_RMDIR = rm -rf
endif

.PHONY: directories

all : directories out 

directories : ${DIR_BUILD}

${DIR_BUILD} :
	$(CMD_MKDIR) -p ${DIR_BUILD}

out : ${DIR_BUILD}/main.o
	$(CC) $(FLAG_OUTPUT) $(DIR_BUILD)/out.exe $(DIR_BUILD)/main.o $(LIBRARY)

build/main.o : $(SRC_DIR)/main.cpp
	$(CC) -o $(DIR_BUILD)/main.o $(FRAG_COMPILE) $(SRC_DIR)/main.cpp $(INCLUDES)

clean :
	$(CMD_RMDIR) ${DIR_BUILD}