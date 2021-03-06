standard:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -Ofast generations.c -msse4.2 -o bio
debug:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -Ofast generations.c -msse4.2 -D DEBUG=true -o bio
speedtest:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -Ofast -frename-registers generations.c -msse4.2 -D SPEEDTEST=true -o bio
unoptimized_speedtest:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -O0 generations.c -msse4.2 -D SPEEDTEST=true -o bio
speeddebug:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -Ofast generations.c -msse4.2 -D SPEEDTEST=true -g -o bio
threaded:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -Ofast generations.c -msse4.2 -D THREADED=true -o bio
threaded_debug:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -Ofast generations.c -msse4.2 -D THREADED=true -D DEBUG=true -o bio
rand_test:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -Ofast -msse4.2 -mrdrnd test_rand_speed.c -o test_rand_speed
faster:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 -Ofast -msse4.2 faster.c -o faster
interleaved_speedtest:
	/usr/local/cellar/gcc/8.2.0/bin/gcc-8 generations.c -o test -Wa,-adhln=test-O3.s -g -fverbose-asm -Ofast -march=native
