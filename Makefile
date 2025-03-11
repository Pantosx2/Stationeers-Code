SHELL := C:/Program Files/Git/bin/bash.exe

ICC= ./bin/ic11.exe
ICCFLAGS= -w
SRC= ./src/
OUT= ./out/
LOG= ./log.txt

default: move

move: all
	mv $(SRC)*.ic10 $(OUT)

all: 
	$(ICC) $(SRC) $(ICCFLAGS) > $(LOG)