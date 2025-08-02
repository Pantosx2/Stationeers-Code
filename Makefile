
ICC= ./bin/ic11.exe
ICCFLAGS= -w

SRC= ./src/
OUT= ./out/
LOG= ./log.txt

.PHONY: all compile

default: all

all: compile
	mv $(SRC)*.ic10 $(OUT)
	rm -rf $(LOG)

compile:
	$(ICC) $(SRC) $(ICCFLAGS) > $(LOG)
