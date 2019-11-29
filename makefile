CC = gcc
OBJS = judge.o map.o state.o eurovisionTests.o eurovisionTestsMain.o eurovision.o
EXEC = eurovision
DEBUG_FLAG = -g
COMP_FLAG = -std=c99 -Wall -pedantic-errors -Werror -DNDEBUG

$(EXEC) : $(OBJS)
	$(CC) $(DEBUG_FLAG) $(OBJS) -L. -lmtm -o $@
eurovision.o: eurovision.c eurovision.h list.h judge.h map.h state.h
	$(CC) -c $(DEBUG_FLAG) $(COMP_FLAG) $*.c
judge.o : judge.c judge.h
	$(CC) -c $(DEBUG_FLAG) $(COMP_FLAG) $*.c
map.o : map.c map.h
	$(CC) -c $(DEBUG_FLAG) $(COMP_FLAG) $*.c
state.o : state.c map.h state.h
	$(CC) -c $(DEBUG_FLAG) $(COMP_FLAG) $*.c
eurovisionTests.o: eurovisionTests.c eurovisionTests.h list.h eurovision.h
	$(CC) -c $(DEBUG_FLAG) $(COMP_FLAG) $*.c
eurovisionTestsMain.o: eurovisionTestsMain.c eurovisionTests.h
	$(CC) -c $(DEBUG_FLAG) $(COMP_FLAG) $*.c
clean:
	rm -f $(OBJS) $(EXEC)
