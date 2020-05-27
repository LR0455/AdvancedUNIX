all:
# sudo apt-get install libseccomp-dev
	gcc -g readcode.c -o readcode -lseccomp
	./readcode
	gcc -g envvar_main.c -o envvar_main -lseccomp
	./envvar_main

test:
	gcc envvar_main.c -o envvar_main -lseccomp
	./envvar_main

