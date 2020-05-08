all:
# sudo apt-get install libseccomp-dev
	gcc -g orw_readcode.c -o orw_readcode -lseccomp
	./orw_readcode
	gcc -g orw_main.c -o orw_main -lseccomp
	./orw_main
