from pwn import *

#conn = remote("aup.zoolab.org", 38154)
conn = process("../src/readcode")

f = open("ftk_sol.c", "r") 
orw = f.read() + "\n//EOF" # //EOF is end symbol

conn.sendlineafter('=====', orw)

conn = process("../src/ftk_main")
conn.interactive()
