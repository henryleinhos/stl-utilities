all: extrude bench convert move

extrude: extrude.c stl_util.c stl_io.c
	gcc -g -Wall extrude.c stl_util.c stl_io.c -o extrude

bench: bench.c stl_util.c stl_io.c
	gcc -g -Wall bench.c stl_util.c stl_io.c -o bench

convert: convert.c stl_util.c stl_io.c
	gcc -g -Wall convert.c stl_util.c stl_io.c -o convert

move: move.c stl_util.c stl_io.c
	gcc -g -Wall move.c stl_util.c stl_io.c -o move

clean:
	rm -f bench extrude convert *.o
