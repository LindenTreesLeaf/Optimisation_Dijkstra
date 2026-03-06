CC=gcc
FLAGS=-O2 -fopenmp
FILE=dijkstra
RM=rm -f

compile:
	make dijkstra
	make dijkstra_seq

dijkstra: $(FILE).c
	$(CC) $(FLAGS) $(FILE).c -o dijkstra

dijkstra_seq: $(FILE)_seq.c 
	$(CC) $(FLAGS) $(FILE)_seq.c -o dijkstra_seq

run:
	./dijkstra 200000 100000 100

run_seq:
	./dijkstra_seq 200000 100000 100
