default:
	g++ -O3 -std=c++11 -Wall source/lz77.cpp -o bin/lz77 
	g++ -O3 -std=c++11 -Wall -fopenmp -lm  source/omp/lz77.cpp -o bin/lz77_omp
	OMP_NUM_THREADS=2 bin/lz77_omp compress data/model.obj
	OMP_NUM_THREADS=2 bin/lz77_omp decompress data/model.obj.comp
clean:
	rm -f bin/lz77
	rm -f bin/lz77_omp
	rm -f data/model.obj.comp
	rm -f data/model.obj.comp.decomp
