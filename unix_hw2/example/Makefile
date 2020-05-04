all:
# -Wall: 編譯後顯示所有警告
	gcc -o getuid -Wall -g getuid.c
	gcc -o chdir -Wall -g chdir.c
# -shared: 該選項指定生成動態連接庫（讓連接器生成T類型的導出符號表，
#          有時候也生成弱連接W類型的導出符號），不用該標誌外部程序無法連接。相當於一個可執行文件
# -fPIC: 表示編譯為位置獨立的代碼，不用此選項的話編譯後的代碼是位置相關的，
#        所以動態載入時是通過代碼拷貝的方式來滿足不同進程的需要，而不能達到真正代碼段共享的目的。
# -ldl： 編譯器查找動態連接庫時有隱含的命名規則，即在給出的名字前面加上lib，後面加上.so來確定庫的名稱
	gcc -o getuid.so -shared -fPIC getuid_inject.c -ldl
	gcc -o chdir.so -shared -fPIC chdir_inject.c -ldl

getuidi:
	gcc -o getuid -Wall -g getuid.c
	gcc -o getuid.so -shared -fPIC getuid_inject.c -ldl
	LD_PRELOAD=./getuid.so ./getuid

chdiri:
	rm -rf chdir
	mkdir chdir
	gcc -o chdir/chdir -Wall -g chdir.c
	gcc -o chdir/chdir.so -shared -fPIC chdir_inject.c -ldl
	LD_PRELOAD=chdir/chdir.so chdir/chdir

opendiri:
	rm -rf opendir
	mkdir opendir
	gcc -o opendir/opendir -Wall -g opendir.c
	gcc -o opendir/opendir.so -shared -fPIC opendir_inject.c -ldl
	LD_PRELOAD=opendir/opendir.so opendir/opendir

stati:
	rm -rf stat
	mkdir stat
	gcc -o stat/stat -Wall -g stat.c
	gcc -o stat/stat.so -shared -fPIC stat_inject.c -ldl
	LD_PRELOAD=stat/stat.so stat/stat

execlpi:
	rm -rf execlp
	mkdir execlp
	gcc -o execlp/execlp -Wall -g execlp.c
	gcc -o execlp/execlp.so -shared -fPIC execlp_inject.c -ldl
	LD_PRELOAD=execlp/execlp.so execlp/execlp

testi:
	gcc -o test -Wall -g test.c
	LD_PRELOAD=opendir/opendir.so ./test