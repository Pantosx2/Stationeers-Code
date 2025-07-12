
ICC= ./bin/ic11.exe
ICP= ./bin/ic11_pantos.exe
ICCFLAGS= -w
SRC= ./src/
OUT= ./out/
LOG= ./log.txt
PANTOS= ./pantos/

.PHONY: move all pantos pantos_all

default: move

move: all
	mv $(SRC)*.ic10 $(OUT)
	rm -rf $(LOG)

all: pantos
	$(ICC) $(SRC) $(ICCFLAGS) > $(LOG)

pantos: pantos_all
	mv $(SRC)*.ic10 $(PANTOS)

pantos_all:
	$(ICP) $(SRC) $(ICCFLAGS) > $(LOG)
