from pwn import *

#conn = remote('aup.zoolab.org', 38152)
conn = process('../src/simple_arithmetic')

# welcome
conn.recvline()
conn.recvline()
conn.recvline()

line = conn.recv().decode().split(' ')

while(len(line) == 5):
    print(line)
    a = int(line[0])
    b = int(line[2])
    res = ''

    if (line[1] == '*'):
        res = a*b
    if (line[1] == '/'):
        res = a/b
    if (line[1] == '+'):
        res = a+b
    if (line[1] == '-'):
        res = a-b
    conn.sendline(str(res))  
    line = conn.recv().decode().split(' ')

print(line)

conn.interactive()
