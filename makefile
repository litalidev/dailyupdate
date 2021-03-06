MAK=nmakefile
EXE=main
SRC=main.c
OBJ=$(SRC:.c=.o)
WEXE=main.exe
WOBJ=$(SRC:.c=.obj)


all: $(EXE)

wexe : $(WEXE)

$(EXE) : $(OBJ)

$(WEXE) : $(WOBJ)

test : all
	./$(EXE)

check : test

distcheck : test

wtest : wexe
	$(WEXE)
