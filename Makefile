#Makefile
all: add_nbo

add_nbo: main.o htons.o
	g++ -o add_nbo main.o htons.o

main.o: htons.h main.cpp
	g++ -c -o main.o main.cpp

htons.o: htons.h htons.cpp
	g++ -c -o htons.o htons.cpp

clean:
	rm -f add_nbo
	rm -f *.o
