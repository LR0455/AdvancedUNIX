all:
# sudo apt-get install libseccomp-dev
	gcc -g readcode.c -o readcode -lseccomp
	./readcode
	gcc -g find_the_key_main.c -o ftk_main -lseccomp
	./ftk_main
