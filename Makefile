.PHONY: clean

all: bin build default

default: bin/exe

bin/exe: build/main.o build/add.o build/sub.o build/mul.o build/div.o
	gcc -Wall -Werror build/main.o build/add.o build/sub.o build/mul.o build/div.o -o bin/exe

build/add.o: src/add.c src/func.h
	gcc -Wall -Werror -c src/add.c -o build/add.o

build/sub.o: src/sub.c src/func.h
	gcc -Wall -Werror -c src/sub.c -o build/sub.o

build/mul.o: src/mul.c src/func.h
	gcc -Wall -Werror -c src/mul.c -o build/mul.o

build/div.o: src/div.c src/func.h
	gcc -Wall -Werror -c src/div.c -o build/div.o

build/main.o: src/main.c src/func.h
	gcc -Wall -Werror -c src/main.c -o build/main.o

bin:
	mkdir bin

build:
	mkdir build

clean:
	rm -rf bin build
