default:
	g++ -O3 -Wall source/lz77.cpp -o bin/lz77 
	bin/lz77 compress data/model.obj
	bin/lz77 decompress data/model.obj.comp
clean:
	rm -f bin/lz77
	rm -f data/model.obj.comp
	rm -f data/model.obj.comp.decomp