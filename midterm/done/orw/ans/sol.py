from pwn import *

conn = remote("aup.zoolab.org", 38155)
#conn = process("../src/orw_readcode")

f = open("orw_sol.c", "r") 
orw = f.read() + "\n//EOF" # //EOF is end symbol

conn.sendlineafter('=====', orw)

#conn = process("../src/orw_main")
conn.interactive()
