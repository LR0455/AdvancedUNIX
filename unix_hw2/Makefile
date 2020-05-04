all:
	gcc -o sandbox.so -shared -fPIC sandbox.c -ldl -fno-builtin
	gcc -o sandbox -Wall -g main.c
	gcc main.c -o sandbox2 -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64
	gcc -o sample -Wall -g sample.c
