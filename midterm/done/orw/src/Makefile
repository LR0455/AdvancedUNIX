all:
# sudo apt-get install libseccomp-dev
	gcc -g readcode.c -o readcode -lseccomp
	./readcode
	gcc -g orw_main.c -o orw_main -lseccomp
	./orw_main
