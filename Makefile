####### version simple

main: main.o elevator.o person.o
	gcc -o jeu main.o elevator.o person.o -lncurses

main.o: main.c elevator.h person.h
	gcc -c -g Wall main.c

elevator.o: elevator.c elevator.h person.h
	gcc -c -g -Wall elevator.c

person.o: person.c person.h
	gcc -c -g -Wall person.c

run : jeu
	./jeu

clean:
	rm-f*.o jeu
