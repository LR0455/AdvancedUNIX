from pwn import *

#conn = remote('aup.zoolab.org', 38151)
conn = process('../src/welcome')

conn.sendafter(': ', 'I love UNIX programming!')
conn.interactive()
