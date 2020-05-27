
got_magic:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <_init-0x43b>
 248:	78 38                	js     282 <_init-0x42e>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 03                	add    %al,(%rbx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 02                	add    %al,(%rdx)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 00                	add    %al,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 63 06             	add    %ah,0x6(%rbx)
 286:	f6 e0                	mul    %al
 288:	ea                   	(bad)  
 289:	cf                   	iret   
 28a:	72 74                	jb     300 <_init-0x3b0>
 28c:	cc                   	int3   
 28d:	37                   	(bad)  
 28e:	e8 2a 30 42 7c       	callq  7c4232bd <_end+0x7c22228d>
 293:	dd 23                	frstor (%rbx)
 295:	21                   	.byte 0x21
 296:	ab                   	stos   %eax,%es:(%rdi)
 297:	a8                   	.byte 0xa8

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	02 00                	add    (%rax),%al
 29a:	00 00                	add    %al,(%rax)
 29c:	0d 00 00 00 01       	or     $0x1000000,%eax
 2a1:	00 00                	add    %al,(%rax)
 2a3:	00 06                	add    %al,(%rsi)
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 00                	add    %al,(%rax)
 2a9:	00 20                	add    %ah,(%rax)
 2ab:	00 80 01 10 00 0d    	add    %al,0xd001001(%rax)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	00 0e                	add    %cl,(%rsi)
 2b5:	00 00                	add    %al,(%rax)
 2b7:	00 29                	add    %ch,(%rcx)
 2b9:	1d 8c 1c 67 55       	sbb    $0x55671c8c,%eax
 2be:	61                   	(bad)  
 2bf:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000000002c0 <.dynsym>:
	...
 2d8:	6b 00 00             	imul   $0x0,(%rax),%eax
 2db:	00 20                	add    %ah,(%rax)
	...
 2ed:	00 00                	add    %al,(%rax)
 2ef:	00 16                	add    %dl,(%rsi)
 2f1:	00 00                	add    %al,(%rax)
 2f3:	00 12                	add    %dl,(%rdx)
	...
 305:	00 00                	add    %al,(%rax)
 307:	00 0b                	add    %cl,(%rbx)
 309:	00 00                	add    %al,(%rax)
 30b:	00 12                	add    %dl,(%rdx)
	...
 31d:	00 00                	add    %al,(%rax)
 31f:	00 46 00             	add    %al,0x0(%rsi)
 322:	00 00                	add    %al,(%rax)
 324:	12 00                	adc    (%rax),%al
	...
 336:	00 00                	add    %al,(%rax)
 338:	1c 00                	sbb    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	12 00                	adc    (%rax),%al
	...
 34e:	00 00                	add    %al,(%rax)
 350:	4d 00 00             	rex.WRB add %r8b,(%r8)
 353:	00 12                	add    %dl,(%rdx)
	...
 365:	00 00                	add    %al,(%rax)
 367:	00 2a                	add    %ch,(%rdx)
 369:	00 00                	add    %al,(%rax)
 36b:	00 12                	add    %dl,(%rdx)
	...
 37d:	00 00                	add    %al,(%rax)
 37f:	00 87 00 00 00 20    	add    %al,0x20000000(%rdi)
	...
 395:	00 00                	add    %al,(%rax)
 397:	00 23                	add    %ah,(%rbx)
 399:	00 00                	add    %al,(%rax)
 39b:	00 12                	add    %dl,(%rdx)
	...
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 17                	add    %dl,(%rdi)
 3b1:	00 00                	add    %al,(%rax)
 3b3:	00 12                	add    %dl,(%rdx)
	...
 3c5:	00 00                	add    %al,(%rax)
 3c7:	00 96 00 00 00 20    	add    %dl,0x20000000(%rsi)
	...
 3dd:	00 00                	add    %al,(%rax)
 3df:	00 37                	add    %dh,(%rdi)
 3e1:	00 00                	add    %al,(%rax)
 3e3:	00 22                	add    %ah,(%rdx)
	...
 3f5:	00 00                	add    %al,(%rax)
 3f7:	00 30                	add    %dh,(%rax)
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 11                	add    %dl,(%rcx)
 3fd:	00 18                	add    %bl,(%rax)
 3ff:	00 10                	add    %dl,(%rax)
 401:	10 20                	adc    %ah,(%rax)
 403:	00 00                	add    %al,(%rax)
 405:	00 00                	add    %al,(%rax)
 407:	00 08                	add    %cl,(%rax)
 409:	00 00                	add    %al,(%rax)
 40b:	00 00                	add    %al,(%rax)
 40d:	00 00                	add    %al,(%rax)
 40f:	00 10                	add    %dl,(%rax)
 411:	00 00                	add    %al,(%rax)
 413:	00 11                	add    %dl,(%rcx)
 415:	00 18                	add    %bl,(%rax)
 417:	00 20                	add    %ah,(%rax)
 419:	10 20                	adc    %ah,(%rax)
 41b:	00 00                	add    %al,(%rax)
 41d:	00 00                	add    %al,(%rax)
 41f:	00 08                	add    %cl,(%rax)
 421:	00 00                	add    %al,(%rax)
 423:	00 00                	add    %al,(%rax)
 425:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000428 <.dynstr>:
 428:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 42c:	63 2e                	movslq (%rsi),%ebp
 42e:	73 6f                	jae    49f <_init-0x211>
 430:	2e 36 00 70 75       	cs add %dh,%ss:0x75(%rax)
 435:	74 73                	je     4aa <_init-0x206>
 437:	00 73 74             	add    %dh,0x74(%rbx)
 43a:	64 69 6e 00 5f 65 78 	imul   $0x6978655f,%fs:0x0(%rsi),%ebp
 441:	69 
 442:	74 00                	je     444 <_init-0x26c>
 444:	70 72                	jo     4b8 <_init-0x1f8>
 446:	69 6e 74 66 00 73 74 	imul   $0x74730066,0x74(%rsi),%ebp
 44d:	72 74                	jb     4c3 <_init-0x1ed>
 44f:	6f                   	outsl  %ds:(%rsi),(%dx)
 450:	6c                   	insb   (%dx),%es:(%rdi)
 451:	00 66 67             	add    %ah,0x67(%rsi)
 454:	65 74 73             	gs je  4ca <_init-0x1e6>
 457:	00 73 74             	add    %dh,0x74(%rbx)
 45a:	64 6f                	outsl  %fs:(%rsi),(%dx)
 45c:	75 74                	jne    4d2 <_init-0x1de>
 45e:	00 5f 5f             	add    %bl,0x5f(%rdi)
 461:	63 78 61             	movslq 0x61(%rax),%edi
 464:	5f                   	pop    %rdi
 465:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 46b:	7a 65                	jp     4d2 <_init-0x1de>
 46d:	00 73 65             	add    %dh,0x65(%rbx)
 470:	74 62                	je     4d4 <_init-0x1dc>
 472:	75 66                	jne    4da <_init-0x1d6>
 474:	00 5f 5f             	add    %bl,0x5f(%rdi)
 477:	6c                   	insb   (%dx),%es:(%rdi)
 478:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 47f:	72 74                	jb     4f5 <_init-0x1bb>
 481:	5f                   	pop    %rdi
 482:	6d                   	insl   (%dx),%es:(%rdi)
 483:	61                   	(bad)  
 484:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 48b:	43 5f                	rex.XB pop %r15
 48d:	32 2e                	xor    (%rsi),%ch
 48f:	32 2e                	xor    (%rsi),%ch
 491:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 496:	4d 5f                	rex.WRB pop %r15
 498:	64 65 72 65          	fs gs jb 501 <_init-0x1af>
 49c:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4a3:	4d 
 4a4:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4a6:	6f                   	outsl  %ds:(%rsi),(%dx)
 4a7:	6e                   	outsb  %ds:(%rsi),(%dx)
 4a8:	65 54                	gs push %rsp
 4aa:	61                   	(bad)  
 4ab:	62                   	(bad)  
 4ac:	6c                   	insb   (%dx),%es:(%rdi)
 4ad:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 4b1:	67 6d                	insl   (%dx),%es:(%edi)
 4b3:	6f                   	outsl  %ds:(%rsi),(%dx)
 4b4:	6e                   	outsb  %ds:(%rsi),(%dx)
 4b5:	5f                   	pop    %rdi
 4b6:	73 74                	jae    52c <_init-0x184>
 4b8:	61                   	(bad)  
 4b9:	72 74                	jb     52f <_init-0x181>
 4bb:	5f                   	pop    %rdi
 4bc:	5f                   	pop    %rdi
 4bd:	00 5f 49             	add    %bl,0x49(%rdi)
 4c0:	54                   	push   %rsp
 4c1:	4d 5f                	rex.WRB pop %r15
 4c3:	72 65                	jb     52a <_init-0x186>
 4c5:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4cc:	4d 
 4cd:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4cf:	6f                   	outsl  %ds:(%rsi),(%dx)
 4d0:	6e                   	outsb  %ds:(%rsi),(%dx)
 4d1:	65 54                	gs push %rsp
 4d3:	61                   	(bad)  
 4d4:	62                   	.byte 0x62
 4d5:	6c                   	insb   (%dx),%es:(%rdi)
 4d6:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000004d8 <.gnu.version>:
 4d8:	00 00                	add    %al,(%rax)
 4da:	00 00                	add    %al,(%rax)
 4dc:	02 00                	add    (%rax),%al
 4de:	02 00                	add    (%rax),%al
 4e0:	02 00                	add    (%rax),%al
 4e2:	02 00                	add    (%rax),%al
 4e4:	02 00                	add    (%rax),%al
 4e6:	02 00                	add    (%rax),%al
 4e8:	00 00                	add    %al,(%rax)
 4ea:	02 00                	add    (%rax),%al
 4ec:	02 00                	add    (%rax),%al
 4ee:	00 00                	add    %al,(%rax)
 4f0:	02 00                	add    (%rax),%al
 4f2:	02 00                	add    (%rax),%al
 4f4:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000000004f8 <.gnu.version_r>:
 4f8:	01 00                	add    %eax,(%rax)
 4fa:	01 00                	add    %eax,(%rax)
 4fc:	01 00                	add    %eax,(%rax)
 4fe:	00 00                	add    %al,(%rax)
 500:	10 00                	adc    %al,(%rax)
 502:	00 00                	add    %al,(%rax)
 504:	00 00                	add    %al,(%rax)
 506:	00 00                	add    %al,(%rax)
 508:	75 1a                	jne    524 <_init-0x18c>
 50a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 510:	5f                   	pop    %rdi
 511:	00 00                	add    %al,(%rax)
 513:	00 00                	add    %al,(%rax)
 515:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000518 <.rela.dyn>:
 518:	88 0d 20 00 00 00    	mov    %cl,0x20(%rip)        # 53e <_init-0x172>
 51e:	00 00                	add    %al,(%rax)
 520:	08 00                	or     %al,(%rax)
 522:	00 00                	add    %al,(%rax)
 524:	00 00                	add    %al,(%rax)
 526:	00 00                	add    %al,(%rax)
 528:	50                   	push   %rax
 529:	08 00                	or     %al,(%rax)
 52b:	00 00                	add    %al,(%rax)
 52d:	00 00                	add    %al,(%rax)
 52f:	00 90 0d 20 00 00    	add    %dl,0x200d(%rax)
 535:	00 00                	add    %al,(%rax)
 537:	00 08                	add    %cl,(%rax)
 539:	00 00                	add    %al,(%rax)
 53b:	00 00                	add    %al,(%rax)
 53d:	00 00                	add    %al,(%rax)
 53f:	00 10                	add    %dl,(%rax)
 541:	08 00                	or     %al,(%rax)
 543:	00 00                	add    %al,(%rax)
 545:	00 00                	add    %al,(%rax)
 547:	00 08                	add    %cl,(%rax)
 549:	10 20                	adc    %ah,(%rax)
 54b:	00 00                	add    %al,(%rax)
 54d:	00 00                	add    %al,(%rax)
 54f:	00 08                	add    %cl,(%rax)
 551:	00 00                	add    %al,(%rax)
 553:	00 00                	add    %al,(%rax)
 555:	00 00                	add    %al,(%rax)
 557:	00 08                	add    %cl,(%rax)
 559:	10 20                	adc    %ah,(%rax)
 55b:	00 00                	add    %al,(%rax)
 55d:	00 00                	add    %al,(%rax)
 55f:	00 d0                	add    %dl,%al
 561:	0f 20 00             	mov    %cr0,%rax
 564:	00 00                	add    %al,(%rax)
 566:	00 00                	add    %al,(%rax)
 568:	06                   	(bad)  
 569:	00 00                	add    %al,(%rax)
 56b:	00 01                	add    %al,(%rcx)
	...
 575:	00 00                	add    %al,(%rax)
 577:	00 d8                	add    %bl,%al
 579:	0f 20 00             	mov    %cr0,%rax
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	06                   	(bad)  
 581:	00 00                	add    %al,(%rax)
 583:	00 03                	add    %al,(%rbx)
	...
 58d:	00 00                	add    %al,(%rax)
 58f:	00 e0                	add    %ah,%al
 591:	0f 20 00             	mov    %cr0,%rax
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	06                   	(bad)  
 599:	00 00                	add    %al,(%rax)
 59b:	00 06                	add    %al,(%rsi)
	...
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 e8                	add    %ch,%al
 5a9:	0f 20 00             	mov    %cr0,%rax
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	06                   	(bad)  
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 08                	add    %cl,(%rax)
	...
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 f0                	add    %dh,%al
 5c1:	0f 20 00             	mov    %cr0,%rax
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	06                   	(bad)  
 5c9:	00 00                	add    %al,(%rax)
 5cb:	00 0b                	add    %cl,(%rbx)
	...
 5d5:	00 00                	add    %al,(%rax)
 5d7:	00 f8                	add    %bh,%al
 5d9:	0f 20 00             	mov    %cr0,%rax
 5dc:	00 00                	add    %al,(%rax)
 5de:	00 00                	add    %al,(%rax)
 5e0:	06                   	(bad)  
 5e1:	00 00                	add    %al,(%rax)
 5e3:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 5ee:	00 00                	add    %al,(%rax)
 5f0:	10 10                	adc    %dl,(%rax)
 5f2:	20 00                	and    %al,(%rax)
 5f4:	00 00                	add    %al,(%rax)
 5f6:	00 00                	add    %al,(%rax)
 5f8:	05 00 00 00 0d       	add    $0xd000000,%eax
	...
 605:	00 00                	add    %al,(%rax)
 607:	00 20                	add    %ah,(%rax)
 609:	10 20                	adc    %ah,(%rax)
 60b:	00 00                	add    %al,(%rax)
 60d:	00 00                	add    %al,(%rax)
 60f:	00 05 00 00 00 0e    	add    %al,0xe000000(%rip)        # e000615 <_end+0xddff5e5>
	...

Disassembly of section .rela.plt:

0000000000000620 <.rela.plt>:
 620:	a0 0f 20 00 00 00 00 	movabs 0x70000000000200f,%al
 627:	00 07 
 629:	00 00                	add    %al,(%rax)
 62b:	00 02                	add    %al,(%rdx)
	...
 635:	00 00                	add    %al,(%rax)
 637:	00 a8 0f 20 00 00    	add    %ch,0x200f(%rax)
 63d:	00 00                	add    %al,(%rax)
 63f:	00 07                	add    %al,(%rdi)
 641:	00 00                	add    %al,(%rax)
 643:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 64e:	00 00                	add    %al,(%rax)
 650:	b0 0f                	mov    $0xf,%al
 652:	20 00                	and    %al,(%rax)
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	07                   	(bad)  
 659:	00 00                	add    %al,(%rax)
 65b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 661 <_init-0x4f>
 661:	00 00                	add    %al,(%rax)
 663:	00 00                	add    %al,(%rax)
 665:	00 00                	add    %al,(%rax)
 667:	00 b8 0f 20 00 00    	add    %bh,0x200f(%rax)
 66d:	00 00                	add    %al,(%rax)
 66f:	00 07                	add    %al,(%rdi)
 671:	00 00                	add    %al,(%rax)
 673:	00 07                	add    %al,(%rdi)
	...
 67d:	00 00                	add    %al,(%rax)
 67f:	00 c0                	add    %al,%al
 681:	0f 20 00             	mov    %cr0,%rax
 684:	00 00                	add    %al,(%rax)
 686:	00 00                	add    %al,(%rax)
 688:	07                   	(bad)  
 689:	00 00                	add    %al,(%rax)
 68b:	00 09                	add    %cl,(%rcx)
	...
 695:	00 00                	add    %al,(%rax)
 697:	00 c8                	add    %cl,%al
 699:	0f 20 00             	mov    %cr0,%rax
 69c:	00 00                	add    %al,(%rax)
 69e:	00 00                	add    %al,(%rax)
 6a0:	07                   	(bad)  
 6a1:	00 00                	add    %al,(%rax)
 6a3:	00 0a                	add    %cl,(%rdx)
	...

Disassembly of section .init:

00000000000006b0 <_init>:
 6b0:	48 83 ec 08          	sub    $0x8,%rsp
 6b4:	48 8b 05 2d 09 20 00 	mov    0x20092d(%rip),%rax        # 200fe8 <__gmon_start__>
 6bb:	48 85 c0             	test   %rax,%rax
 6be:	74 02                	je     6c2 <_init+0x12>
 6c0:	ff d0                	callq  *%rax
 6c2:	48 83 c4 08          	add    $0x8,%rsp
 6c6:	c3                   	retq   

Disassembly of section .plt:

00000000000006d0 <.plt>:
 6d0:	ff 35 ba 08 20 00    	pushq  0x2008ba(%rip)        # 200f90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6d6:	ff 25 bc 08 20 00    	jmpq   *0x2008bc(%rip)        # 200f98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006e0 <_exit@plt>:
 6e0:	ff 25 ba 08 20 00    	jmpq   *0x2008ba(%rip)        # 200fa0 <_exit@GLIBC_2.2.5>
 6e6:	68 00 00 00 00       	pushq  $0x0
 6eb:	e9 e0 ff ff ff       	jmpq   6d0 <.plt>

00000000000006f0 <setbuf@plt>:
 6f0:	ff 25 b2 08 20 00    	jmpq   *0x2008b2(%rip)        # 200fa8 <setbuf@GLIBC_2.2.5>
 6f6:	68 01 00 00 00       	pushq  $0x1
 6fb:	e9 d0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000700 <printf@plt>:
 700:	ff 25 aa 08 20 00    	jmpq   *0x2008aa(%rip)        # 200fb0 <printf@GLIBC_2.2.5>
 706:	68 02 00 00 00       	pushq  $0x2
 70b:	e9 c0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000710 <fgets@plt>:
 710:	ff 25 a2 08 20 00    	jmpq   *0x2008a2(%rip)        # 200fb8 <fgets@GLIBC_2.2.5>
 716:	68 03 00 00 00       	pushq  $0x3
 71b:	e9 b0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000720 <strtol@plt>:
 720:	ff 25 9a 08 20 00    	jmpq   *0x20089a(%rip)        # 200fc0 <strtol@GLIBC_2.2.5>
 726:	68 04 00 00 00       	pushq  $0x4
 72b:	e9 a0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000730 <exit@plt>:
 730:	ff 25 92 08 20 00    	jmpq   *0x200892(%rip)        # 200fc8 <exit@GLIBC_2.2.5>
 736:	68 05 00 00 00       	pushq  $0x5
 73b:	e9 90 ff ff ff       	jmpq   6d0 <.plt>

Disassembly of section .plt.got:

0000000000000740 <puts@plt>:
 740:	ff 25 92 08 20 00    	jmpq   *0x200892(%rip)        # 200fd8 <puts@GLIBC_2.2.5>
 746:	66 90                	xchg   %ax,%ax

0000000000000748 <__cxa_finalize@plt>:
 748:	ff 25 aa 08 20 00    	jmpq   *0x2008aa(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 74e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000750 <_start>:
 750:	31 ed                	xor    %ebp,%ebp
 752:	49 89 d1             	mov    %rdx,%r9
 755:	5e                   	pop    %rsi
 756:	48 89 e2             	mov    %rsp,%rdx
 759:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 75d:	50                   	push   %rax
 75e:	54                   	push   %rsp
 75f:	4c 8d 05 da 02 00 00 	lea    0x2da(%rip),%r8        # a40 <__libc_csu_fini>
 766:	48 8d 0d 63 02 00 00 	lea    0x263(%rip),%rcx        # 9d0 <__libc_csu_init>
 76d:	48 8d 3d 4c 01 00 00 	lea    0x14c(%rip),%rdi        # 8c0 <main>
 774:	ff 15 66 08 20 00    	callq  *0x200866(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 77a:	f4                   	hlt    
 77b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000780 <deregister_tm_clones>:
 780:	48 8d 3d 89 08 20 00 	lea    0x200889(%rip),%rdi        # 201010 <stdout@@GLIBC_2.2.5>
 787:	55                   	push   %rbp
 788:	48 8d 05 81 08 20 00 	lea    0x200881(%rip),%rax        # 201010 <stdout@@GLIBC_2.2.5>
 78f:	48 39 f8             	cmp    %rdi,%rax
 792:	48 89 e5             	mov    %rsp,%rbp
 795:	74 19                	je     7b0 <deregister_tm_clones+0x30>
 797:	48 8b 05 32 08 20 00 	mov    0x200832(%rip),%rax        # 200fd0 <_ITM_deregisterTMCloneTable>
 79e:	48 85 c0             	test   %rax,%rax
 7a1:	74 0d                	je     7b0 <deregister_tm_clones+0x30>
 7a3:	5d                   	pop    %rbp
 7a4:	ff e0                	jmpq   *%rax
 7a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7ad:	00 00 00 
 7b0:	5d                   	pop    %rbp
 7b1:	c3                   	retq   
 7b2:	0f 1f 40 00          	nopl   0x0(%rax)
 7b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 7bd:	00 00 00 

00000000000007c0 <register_tm_clones>:
 7c0:	48 8d 3d 49 08 20 00 	lea    0x200849(%rip),%rdi        # 201010 <stdout@@GLIBC_2.2.5>
 7c7:	48 8d 35 42 08 20 00 	lea    0x200842(%rip),%rsi        # 201010 <stdout@@GLIBC_2.2.5>
 7ce:	55                   	push   %rbp
 7cf:	48 29 fe             	sub    %rdi,%rsi
 7d2:	48 89 e5             	mov    %rsp,%rbp
 7d5:	48 c1 fe 03          	sar    $0x3,%rsi
 7d9:	48 89 f0             	mov    %rsi,%rax
 7dc:	48 c1 e8 3f          	shr    $0x3f,%rax
 7e0:	48 01 c6             	add    %rax,%rsi
 7e3:	48 d1 fe             	sar    %rsi
 7e6:	74 18                	je     800 <register_tm_clones+0x40>
 7e8:	48 8b 05 01 08 20 00 	mov    0x200801(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 7ef:	48 85 c0             	test   %rax,%rax
 7f2:	74 0c                	je     800 <register_tm_clones+0x40>
 7f4:	5d                   	pop    %rbp
 7f5:	ff e0                	jmpq   *%rax
 7f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 7fe:	00 00 
 800:	5d                   	pop    %rbp
 801:	c3                   	retq   
 802:	0f 1f 40 00          	nopl   0x0(%rax)
 806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 80d:	00 00 00 

0000000000000810 <__do_global_dtors_aux>:
 810:	80 3d 11 08 20 00 00 	cmpb   $0x0,0x200811(%rip)        # 201028 <completed.7698>
 817:	75 2f                	jne    848 <__do_global_dtors_aux+0x38>
 819:	48 83 3d d7 07 20 00 	cmpq   $0x0,0x2007d7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 820:	00 
 821:	55                   	push   %rbp
 822:	48 89 e5             	mov    %rsp,%rbp
 825:	74 0c                	je     833 <__do_global_dtors_aux+0x23>
 827:	48 8b 3d da 07 20 00 	mov    0x2007da(%rip),%rdi        # 201008 <__dso_handle>
 82e:	e8 15 ff ff ff       	callq  748 <__cxa_finalize@plt>
 833:	e8 48 ff ff ff       	callq  780 <deregister_tm_clones>
 838:	c6 05 e9 07 20 00 01 	movb   $0x1,0x2007e9(%rip)        # 201028 <completed.7698>
 83f:	5d                   	pop    %rbp
 840:	c3                   	retq   
 841:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 848:	f3 c3                	repz retq 
 84a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000850 <frame_dummy>:
 850:	55                   	push   %rbp
 851:	48 89 e5             	mov    %rsp,%rbp
 854:	5d                   	pop    %rbp
 855:	e9 66 ff ff ff       	jmpq   7c0 <register_tm_clones>

000000000000085a <unbuffered>:
 85a:	55                   	push   %rbp
 85b:	48 89 e5             	mov    %rsp,%rbp
 85e:	48 8b 05 bb 07 20 00 	mov    0x2007bb(%rip),%rax        # 201020 <stdin@@GLIBC_2.2.5>
 865:	be 00 00 00 00       	mov    $0x0,%esi
 86a:	48 89 c7             	mov    %rax,%rdi
 86d:	e8 7e fe ff ff       	callq  6f0 <setbuf@plt>
 872:	48 8b 05 97 07 20 00 	mov    0x200797(%rip),%rax        # 201010 <stdout@@GLIBC_2.2.5>
 879:	be 00 00 00 00       	mov    $0x0,%esi
 87e:	48 89 c7             	mov    %rax,%rdi
 881:	e8 6a fe ff ff       	callq  6f0 <setbuf@plt>
 886:	90                   	nop
 887:	5d                   	pop    %rbp
 888:	c3                   	retq   

0000000000000889 <showflag>:
 889:	55                   	push   %rbp
 88a:	48 89 e5             	mov    %rsp,%rbp
 88d:	48 8d 3d c0 01 00 00 	lea    0x1c0(%rip),%rdi        # a54 <_IO_stdin_used+0x4>
 894:	e8 a7 fe ff ff       	callq  740 <puts@plt>
 899:	90                   	nop
 89a:	5d                   	pop    %rbp
 89b:	c3                   	retq   

000000000000089c <magic>:
 89c:	55                   	push   %rbp
 89d:	48 89 e5             	mov    %rsp,%rbp
 8a0:	48 8d 3d cb 01 00 00 	lea    0x1cb(%rip),%rdi        # a72 <_IO_stdin_used+0x22>
 8a7:	e8 94 fe ff ff       	callq  740 <puts@plt>
 8ac:	b8 00 00 00 00       	mov    $0x0,%eax
 8b1:	e8 d3 ff ff ff       	callq  889 <showflag>
 8b6:	bf 00 00 00 00       	mov    $0x0,%edi
 8bb:	e8 20 fe ff ff       	callq  6e0 <_exit@plt>

00000000000008c0 <main>:
 8c0:	55                   	push   %rbp
 8c1:	48 89 e5             	mov    %rsp,%rbp
 8c4:	48 83 ec 60          	sub    $0x60,%rsp
 8c8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 8cf:	00 00 
 8d1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 8d5:	31 c0                	xor    %eax,%eax
 8d7:	b8 00 00 00 00       	mov    $0x0,%eax
 8dc:	e8 79 ff ff ff       	callq  85a <unbuffered>
 8e1:	48 8d 3d 91 01 00 00 	lea    0x191(%rip),%rdi        # a79 <_IO_stdin_used+0x29>
 8e8:	e8 53 fe ff ff       	callq  740 <puts@plt>
 8ed:	48 8d 35 cc ff ff ff 	lea    -0x34(%rip),%rsi        # 8c0 <main>
 8f4:	48 8d 3d 87 01 00 00 	lea    0x187(%rip),%rdi        # a82 <_IO_stdin_used+0x32>
 8fb:	b8 00 00 00 00       	mov    $0x0,%eax
 900:	e8 fb fd ff ff       	callq  700 <printf@plt>
 905:	48 8b 05 cc 06 20 00 	mov    0x2006cc(%rip),%rax        # 200fd8 <puts@GLIBC_2.2.5>
 90c:	48 89 c6             	mov    %rax,%rsi
 90f:	48 8d 3d 79 01 00 00 	lea    0x179(%rip),%rdi        # a8f <_IO_stdin_used+0x3f>
 916:	b8 00 00 00 00       	mov    $0x0,%eax
 91b:	e8 e0 fd ff ff       	callq  700 <printf@plt>
 920:	48 8d 3d 75 01 00 00 	lea    0x175(%rip),%rdi        # a9c <_IO_stdin_used+0x4c>
 927:	e8 14 fe ff ff       	callq  740 <puts@plt>
 92c:	48 8d 3d 6a 01 00 00 	lea    0x16a(%rip),%rdi        # a9d <_IO_stdin_used+0x4d>
 933:	e8 08 fe ff ff       	callq  740 <puts@plt>
 938:	48 8b 15 e1 06 20 00 	mov    0x2006e1(%rip),%rdx        # 201020 <stdin@@GLIBC_2.2.5>
 93f:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 943:	be 40 00 00 00       	mov    $0x40,%esi
 948:	48 89 c7             	mov    %rax,%rdi
 94b:	e8 c0 fd ff ff       	callq  710 <fgets@plt>
 950:	48 85 c0             	test   %rax,%rax
 953:	74 6a                	je     9bf <main+0xff>
 955:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 959:	ba 00 00 00 00       	mov    $0x0,%edx
 95e:	be 00 00 00 00       	mov    $0x0,%esi
 963:	48 89 c7             	mov    %rax,%rdi
 966:	e8 b5 fd ff ff       	callq  720 <strtol@plt>
 96b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
 96f:	48 8d 3d 44 01 00 00 	lea    0x144(%rip),%rdi        # aba <_IO_stdin_used+0x6a>
 976:	e8 c5 fd ff ff       	callq  740 <puts@plt>
 97b:	48 8b 15 9e 06 20 00 	mov    0x20069e(%rip),%rdx        # 201020 <stdin@@GLIBC_2.2.5>
 982:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 986:	be 40 00 00 00       	mov    $0x40,%esi
 98b:	48 89 c7             	mov    %rax,%rdi
 98e:	e8 7d fd ff ff       	callq  710 <fgets@plt>
 993:	48 85 c0             	test   %rax,%rax
 996:	74 2a                	je     9c2 <main+0x102>
 998:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
 99c:	ba 00 00 00 00       	mov    $0x0,%edx
 9a1:	be 00 00 00 00       	mov    $0x0,%esi
 9a6:	48 89 c7             	mov    %rax,%rdi
 9a9:	e8 72 fd ff ff       	callq  720 <strtol@plt>
 9ae:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
 9b2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 9b6:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
 9ba:	48 89 10             	mov    %rdx,(%rax)
 9bd:	eb 04                	jmp    9c3 <main+0x103>
 9bf:	90                   	nop
 9c0:	eb 01                	jmp    9c3 <main+0x103>
 9c2:	90                   	nop
 9c3:	bf 00 00 00 00       	mov    $0x0,%edi
 9c8:	e8 63 fd ff ff       	callq  730 <exit@plt>
 9cd:	0f 1f 00             	nopl   (%rax)

00000000000009d0 <__libc_csu_init>:
 9d0:	41 57                	push   %r15
 9d2:	41 56                	push   %r14
 9d4:	49 89 d7             	mov    %rdx,%r15
 9d7:	41 55                	push   %r13
 9d9:	41 54                	push   %r12
 9db:	4c 8d 25 a6 03 20 00 	lea    0x2003a6(%rip),%r12        # 200d88 <__frame_dummy_init_array_entry>
 9e2:	55                   	push   %rbp
 9e3:	48 8d 2d a6 03 20 00 	lea    0x2003a6(%rip),%rbp        # 200d90 <__init_array_end>
 9ea:	53                   	push   %rbx
 9eb:	41 89 fd             	mov    %edi,%r13d
 9ee:	49 89 f6             	mov    %rsi,%r14
 9f1:	4c 29 e5             	sub    %r12,%rbp
 9f4:	48 83 ec 08          	sub    $0x8,%rsp
 9f8:	48 c1 fd 03          	sar    $0x3,%rbp
 9fc:	e8 af fc ff ff       	callq  6b0 <_init>
 a01:	48 85 ed             	test   %rbp,%rbp
 a04:	74 20                	je     a26 <__libc_csu_init+0x56>
 a06:	31 db                	xor    %ebx,%ebx
 a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a0f:	00 
 a10:	4c 89 fa             	mov    %r15,%rdx
 a13:	4c 89 f6             	mov    %r14,%rsi
 a16:	44 89 ef             	mov    %r13d,%edi
 a19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 a1d:	48 83 c3 01          	add    $0x1,%rbx
 a21:	48 39 dd             	cmp    %rbx,%rbp
 a24:	75 ea                	jne    a10 <__libc_csu_init+0x40>
 a26:	48 83 c4 08          	add    $0x8,%rsp
 a2a:	5b                   	pop    %rbx
 a2b:	5d                   	pop    %rbp
 a2c:	41 5c                	pop    %r12
 a2e:	41 5d                	pop    %r13
 a30:	41 5e                	pop    %r14
 a32:	41 5f                	pop    %r15
 a34:	c3                   	retq   
 a35:	90                   	nop
 a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a3d:	00 00 00 

0000000000000a40 <__libc_csu_fini>:
 a40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000a44 <_fini>:
 a44:	48 83 ec 08          	sub    $0x8,%rsp
 a48:	48 83 c4 08          	add    $0x8,%rsp
 a4c:	c3                   	retq   

Disassembly of section .rodata:

0000000000000a50 <_IO_stdin_used>:
 a50:	01 00                	add    %eax,(%rax)
 a52:	02 00                	add    (%rax),%al
 a54:	46                   	rex.RX
 a55:	4c                   	rex.WR
 a56:	41                   	rex.B
 a57:	47 7b 77             	rex.RXB jnp ad1 <_IO_stdin_used+0x81>
 a5a:	65 31 63 30          	xor    %esp,%gs:0x30(%rbx)
 a5e:	6d                   	insl   (%dx),%es:(%rdi)
 a5f:	65 5f                	gs pop %rdi
 a61:	74 6f                	je     ad2 <_IO_stdin_used+0x82>
 a63:	5f                   	pop    %rdi
 a64:	41 55                	push   %r13
 a66:	50                   	push   %rax
 a67:	5f                   	pop    %rdi
 a68:	6d                   	insl   (%dx),%es:(%rdi)
 a69:	69 64 74 33 72 6d 21 	imul   $0x7d216d72,0x33(%rsp,%rsi,2),%esp
 a70:	7d 
 a71:	00 42 69             	add    %al,0x69(%rdx)
 a74:	6e                   	outsb  %ds:(%rsi),(%dx)
 a75:	67 6f                	outsl  %ds:(%esi),(%dx)
 a77:	21 00                	and    %eax,(%rax)
 a79:	57                   	push   %rdi
 a7a:	65 6c                	gs insb (%dx),%es:(%rdi)
 a7c:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
 a7f:	65 21 00             	and    %eax,%gs:(%rax)
 a82:	2d 20 6d 61 69       	sub    $0x69616d20,%eax
 a87:	6e                   	outsb  %ds:(%rsi),(%dx)
 a88:	20 40 20             	and    %al,0x20(%rax)
 a8b:	25 70 0a 00 2d       	and    $0x2d000a70,%eax
 a90:	20 70 75             	and    %dh,0x75(%rax)
 a93:	74 73                	je     b08 <__GNU_EH_FRAME_HDR+0x30>
 a95:	20 40 20             	and    %al,0x20(%rax)
 a98:	25 70 0a 00 00       	and    $0xa70,%eax
 a9d:	57                   	push   %rdi
 a9e:	68 65 72 65 20       	pushq  $0x20657265
 aa3:	64 6f                	outsl  %fs:(%rsi),(%dx)
 aa5:	20 79 6f             	and    %bh,0x6f(%rcx)
 aa8:	75 20                	jne    aca <_IO_stdin_used+0x7a>
 aaa:	77 61                	ja     b0d <__GNU_EH_FRAME_HDR+0x35>
 aac:	6e                   	outsb  %ds:(%rsi),(%dx)
 aad:	74 20                	je     acf <_IO_stdin_used+0x7f>
 aaf:	74 6f                	je     b20 <__GNU_EH_FRAME_HDR+0x48>
 ab1:	20 77 72             	and    %dh,0x72(%rdi)
 ab4:	69 74 65 3f 20 00 57 	imul   $0x68570020,0x3f(%rbp,%riz,2),%esi
 abb:	68 
 abc:	61                   	(bad)  
 abd:	74 20                	je     adf <__GNU_EH_FRAME_HDR+0x7>
 abf:	64 6f                	outsl  %fs:(%rsi),(%dx)
 ac1:	20 79 6f             	and    %bh,0x6f(%rcx)
 ac4:	75 20                	jne    ae6 <__GNU_EH_FRAME_HDR+0xe>
 ac6:	77 61                	ja     b29 <__GNU_EH_FRAME_HDR+0x51>
 ac8:	6e                   	outsb  %ds:(%rsi),(%dx)
 ac9:	74 20                	je     aeb <__GNU_EH_FRAME_HDR+0x13>
 acb:	74 6f                	je     b3c <__GNU_EH_FRAME_HDR+0x64>
 acd:	20 77 72             	and    %dh,0x72(%rdi)
 ad0:	69                   	.byte 0x69
 ad1:	74 65                	je     b38 <__GNU_EH_FRAME_HDR+0x60>
 ad3:	3f                   	(bad)  
 ad4:	20 00                	and    %al,(%rax)

Disassembly of section .eh_frame_hdr:

0000000000000ad8 <__GNU_EH_FRAME_HDR>:
 ad8:	01 1b                	add    %ebx,(%rbx)
 ada:	03 3b                	add    (%rbx),%edi
 adc:	54                   	push   %rsp
 add:	00 00                	add    %al,(%rax)
 adf:	00 09                	add    %cl,(%rcx)
 ae1:	00 00                	add    %al,(%rax)
 ae3:	00 f8                	add    %bh,%al
 ae5:	fb                   	sti    
 ae6:	ff                   	(bad)  
 ae7:	ff a0 00 00 00 68    	jmpq   *0x68000000(%rax)
 aed:	fc                   	cld    
 aee:	ff                   	(bad)  
 aef:	ff c8                	dec    %eax
 af1:	00 00                	add    %al,(%rax)
 af3:	00 78 fc             	add    %bh,-0x4(%rax)
 af6:	ff                   	(bad)  
 af7:	ff 70 00             	pushq  0x0(%rax)
 afa:	00 00                	add    %al,(%rax)
 afc:	82                   	(bad)  
 afd:	fd                   	std    
 afe:	ff                   	(bad)  
 aff:	ff e0                	jmpq   *%rax
 b01:	00 00                	add    %al,(%rax)
 b03:	00 b1 fd ff ff 00    	add    %dh,0xfffffd(%rcx)
 b09:	01 00                	add    %eax,(%rax)
 b0b:	00 c4                	add    %al,%ah
 b0d:	fd                   	std    
 b0e:	ff                   	(bad)  
 b0f:	ff 20                	jmpq   *(%rax)
 b11:	01 00                	add    %eax,(%rax)
 b13:	00 e8                	add    %ch,%al
 b15:	fd                   	std    
 b16:	ff                   	(bad)  
 b17:	ff                   	(bad)  
 b18:	3c 01                	cmp    $0x1,%al
 b1a:	00 00                	add    %al,(%rax)
 b1c:	f8                   	clc    
 b1d:	fe                   	(bad)  
 b1e:	ff                   	(bad)  
 b1f:	ff 58 01             	lcall  *0x1(%rax)
 b22:	00 00                	add    %al,(%rax)
 b24:	68 ff ff ff a0       	pushq  $0xffffffffa0ffffff
 b29:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

0000000000000b30 <__FRAME_END__-0x15c>:
 b30:	14 00                	adc    $0x0,%al
 b32:	00 00                	add    %al,(%rax)
 b34:	00 00                	add    %al,(%rax)
 b36:	00 00                	add    %al,(%rax)
 b38:	01 7a 52             	add    %edi,0x52(%rdx)
 b3b:	00 01                	add    %al,(%rcx)
 b3d:	78 10                	js     b4f <__GNU_EH_FRAME_HDR+0x77>
 b3f:	01 1b                	add    %ebx,(%rbx)
 b41:	0c 07                	or     $0x7,%al
 b43:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
 b49:	00 00                	add    %al,(%rax)
 b4b:	00 1c 00             	add    %bl,(%rax,%rax,1)
 b4e:	00 00                	add    %al,(%rax)
 b50:	00 fc                	add    %bh,%ah
 b52:	ff                   	(bad)  
 b53:	ff 2b                	ljmp   *(%rbx)
	...
 b5d:	00 00                	add    %al,(%rax)
 b5f:	00 14 00             	add    %dl,(%rax,%rax,1)
 b62:	00 00                	add    %al,(%rax)
 b64:	00 00                	add    %al,(%rax)
 b66:	00 00                	add    %al,(%rax)
 b68:	01 7a 52             	add    %edi,0x52(%rdx)
 b6b:	00 01                	add    %al,(%rcx)
 b6d:	78 10                	js     b7f <__GNU_EH_FRAME_HDR+0xa7>
 b6f:	01 1b                	add    %ebx,(%rbx)
 b71:	0c 07                	or     $0x7,%al
 b73:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
 b79:	00 00                	add    %al,(%rax)
 b7b:	00 1c 00             	add    %bl,(%rax,%rax,1)
 b7e:	00 00                	add    %al,(%rax)
 b80:	50                   	push   %rax
 b81:	fb                   	sti    
 b82:	ff                   	(bad)  
 b83:	ff 70 00             	pushq  0x0(%rax)
 b86:	00 00                	add    %al,(%rax)
 b88:	00 0e                	add    %cl,(%rsi)
 b8a:	10 46 0e             	adc    %al,0xe(%rsi)
 b8d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
 b90:	0b 77 08             	or     0x8(%rdi),%esi
 b93:	80 00 3f             	addb   $0x3f,(%rax)
 b96:	1a 3b                	sbb    (%rbx),%bh
 b98:	2a 33                	sub    (%rbx),%dh
 b9a:	24 22                	and    $0x22,%al
 b9c:	00 00                	add    %al,(%rax)
 b9e:	00 00                	add    %al,(%rax)
 ba0:	14 00                	adc    $0x0,%al
 ba2:	00 00                	add    %al,(%rax)
 ba4:	44 00 00             	add    %r8b,(%rax)
 ba7:	00 98 fb ff ff 10    	add    %bl,0x10fffffb(%rax)
	...
 bb5:	00 00                	add    %al,(%rax)
 bb7:	00 1c 00             	add    %bl,(%rax,%rax,1)
 bba:	00 00                	add    %al,(%rax)
 bbc:	5c                   	pop    %rsp
 bbd:	00 00                	add    %al,(%rax)
 bbf:	00 9a fc ff ff 2f    	add    %bl,0x2ffffffc(%rdx)
 bc5:	00 00                	add    %al,(%rax)
 bc7:	00 00                	add    %al,(%rax)
 bc9:	41 0e                	rex.B (bad) 
 bcb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 bd1:	6a 0c                	pushq  $0xc
 bd3:	07                   	(bad)  
 bd4:	08 00                	or     %al,(%rax)
 bd6:	00 00                	add    %al,(%rax)
 bd8:	1c 00                	sbb    $0x0,%al
 bda:	00 00                	add    %al,(%rax)
 bdc:	7c 00                	jl     bde <__GNU_EH_FRAME_HDR+0x106>
 bde:	00 00                	add    %al,(%rax)
 be0:	a9 fc ff ff 13       	test   $0x13fffffc,%eax
 be5:	00 00                	add    %al,(%rax)
 be7:	00 00                	add    %al,(%rax)
 be9:	41 0e                	rex.B (bad) 
 beb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 bf1:	4e 0c 07             	rex.WRX or $0x7,%al
 bf4:	08 00                	or     %al,(%rax)
 bf6:	00 00                	add    %al,(%rax)
 bf8:	18 00                	sbb    %al,(%rax)
 bfa:	00 00                	add    %al,(%rax)
 bfc:	9c                   	pushfq 
 bfd:	00 00                	add    %al,(%rax)
 bff:	00 9c fc ff ff 24 00 	add    %bl,0x24ffff(%rsp,%rdi,8)
 c06:	00 00                	add    %al,(%rax)
 c08:	00 41 0e             	add    %al,0xe(%rcx)
 c0b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 c11:	00 00                	add    %al,(%rax)
 c13:	00 18                	add    %bl,(%rax)
 c15:	00 00                	add    %al,(%rax)
 c17:	00 b8 00 00 00 a4    	add    %bh,-0x5c000000(%rax)
 c1d:	fc                   	cld    
 c1e:	ff                   	(bad)  
 c1f:	ff 0d 01 00 00 00    	decl   0x1(%rip)        # c26 <__GNU_EH_FRAME_HDR+0x14e>
 c25:	41 0e                	rex.B (bad) 
 c27:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 c2d:	00 00                	add    %al,(%rax)
 c2f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
 c33:	00 d4                	add    %dl,%ah
 c35:	00 00                	add    %al,(%rax)
 c37:	00 98 fd ff ff 65    	add    %bl,0x65fffffd(%rax)
 c3d:	00 00                	add    %al,(%rax)
 c3f:	00 00                	add    %al,(%rax)
 c41:	42 0e                	rex.X (bad) 
 c43:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
 c49:	8e 03                	mov    (%rbx),%es
 c4b:	45 0e                	rex.RB (bad) 
 c4d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
 c53:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86301aa1 <_end+0xffffffff86100a71>
 c59:	06                   	(bad)  
 c5a:	48 0e                	rex.W (bad) 
 c5c:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
 c62:	72 0e                	jb     c72 <__GNU_EH_FRAME_HDR+0x19a>
 c64:	38 41 0e             	cmp    %al,0xe(%rcx)
 c67:	30 41 0e             	xor    %al,0xe(%rcx)
 c6a:	28 42 0e             	sub    %al,0xe(%rdx)
 c6d:	20 42 0e             	and    %al,0xe(%rdx)
 c70:	18 42 0e             	sbb    %al,0xe(%rdx)
 c73:	10 42 0e             	adc    %al,0xe(%rdx)
 c76:	08 00                	or     %al,(%rax)
 c78:	10 00                	adc    %al,(%rax)
 c7a:	00 00                	add    %al,(%rax)
 c7c:	1c 01                	sbb    $0x1,%al
 c7e:	00 00                	add    %al,(%rax)
 c80:	c0 fd ff             	sar    $0xff,%ch
 c83:	ff 02                	incl   (%rdx)
 c85:	00 00                	add    %al,(%rax)
 c87:	00 00                	add    %al,(%rax)
 c89:	00 00                	add    %al,(%rax)
	...

0000000000000c8c <__FRAME_END__>:
 c8c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000200d88 <__frame_dummy_init_array_entry>:
  200d88:	50                   	push   %rax
  200d89:	08 00                	or     %al,(%rax)
  200d8b:	00 00                	add    %al,(%rax)
  200d8d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000200d90 <__do_global_dtors_aux_fini_array_entry>:
  200d90:	10 08                	adc    %cl,(%rax)
  200d92:	00 00                	add    %al,(%rax)
  200d94:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000200d98 <_DYNAMIC>:
  200d98:	01 00                	add    %eax,(%rax)
  200d9a:	00 00                	add    %al,(%rax)
  200d9c:	00 00                	add    %al,(%rax)
  200d9e:	00 00                	add    %al,(%rax)
  200da0:	01 00                	add    %eax,(%rax)
  200da2:	00 00                	add    %al,(%rax)
  200da4:	00 00                	add    %al,(%rax)
  200da6:	00 00                	add    %al,(%rax)
  200da8:	0c 00                	or     $0x0,%al
  200daa:	00 00                	add    %al,(%rax)
  200dac:	00 00                	add    %al,(%rax)
  200dae:	00 00                	add    %al,(%rax)
  200db0:	b0 06                	mov    $0x6,%al
  200db2:	00 00                	add    %al,(%rax)
  200db4:	00 00                	add    %al,(%rax)
  200db6:	00 00                	add    %al,(%rax)
  200db8:	0d 00 00 00 00       	or     $0x0,%eax
  200dbd:	00 00                	add    %al,(%rax)
  200dbf:	00 44 0a 00          	add    %al,0x0(%rdx,%rcx,1)
  200dc3:	00 00                	add    %al,(%rax)
  200dc5:	00 00                	add    %al,(%rax)
  200dc7:	00 19                	add    %bl,(%rcx)
  200dc9:	00 00                	add    %al,(%rax)
  200dcb:	00 00                	add    %al,(%rax)
  200dcd:	00 00                	add    %al,(%rax)
  200dcf:	00 88 0d 20 00 00    	add    %cl,0x200d(%rax)
  200dd5:	00 00                	add    %al,(%rax)
  200dd7:	00 1b                	add    %bl,(%rbx)
  200dd9:	00 00                	add    %al,(%rax)
  200ddb:	00 00                	add    %al,(%rax)
  200ddd:	00 00                	add    %al,(%rax)
  200ddf:	00 08                	add    %cl,(%rax)
  200de1:	00 00                	add    %al,(%rax)
  200de3:	00 00                	add    %al,(%rax)
  200de5:	00 00                	add    %al,(%rax)
  200de7:	00 1a                	add    %bl,(%rdx)
  200de9:	00 00                	add    %al,(%rax)
  200deb:	00 00                	add    %al,(%rax)
  200ded:	00 00                	add    %al,(%rax)
  200def:	00 90 0d 20 00 00    	add    %dl,0x200d(%rax)
  200df5:	00 00                	add    %al,(%rax)
  200df7:	00 1c 00             	add    %bl,(%rax,%rax,1)
  200dfa:	00 00                	add    %al,(%rax)
  200dfc:	00 00                	add    %al,(%rax)
  200dfe:	00 00                	add    %al,(%rax)
  200e00:	08 00                	or     %al,(%rax)
  200e02:	00 00                	add    %al,(%rax)
  200e04:	00 00                	add    %al,(%rax)
  200e06:	00 00                	add    %al,(%rax)
  200e08:	f5                   	cmc    
  200e09:	fe                   	(bad)  
  200e0a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200e0d:	00 00                	add    %al,(%rax)
  200e0f:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  200e15:	00 00                	add    %al,(%rax)
  200e17:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 200e1d <_DYNAMIC+0x85>
  200e1d:	00 00                	add    %al,(%rax)
  200e1f:	00 28                	add    %ch,(%rax)
  200e21:	04 00                	add    $0x0,%al
  200e23:	00 00                	add    %al,(%rax)
  200e25:	00 00                	add    %al,(%rax)
  200e27:	00 06                	add    %al,(%rsi)
  200e29:	00 00                	add    %al,(%rax)
  200e2b:	00 00                	add    %al,(%rax)
  200e2d:	00 00                	add    %al,(%rax)
  200e2f:	00 c0                	add    %al,%al
  200e31:	02 00                	add    (%rax),%al
  200e33:	00 00                	add    %al,(%rax)
  200e35:	00 00                	add    %al,(%rax)
  200e37:	00 0a                	add    %cl,(%rdx)
  200e39:	00 00                	add    %al,(%rax)
  200e3b:	00 00                	add    %al,(%rax)
  200e3d:	00 00                	add    %al,(%rax)
  200e3f:	00 b0 00 00 00 00    	add    %dh,0x0(%rax)
  200e45:	00 00                	add    %al,(%rax)
  200e47:	00 0b                	add    %cl,(%rbx)
  200e49:	00 00                	add    %al,(%rax)
  200e4b:	00 00                	add    %al,(%rax)
  200e4d:	00 00                	add    %al,(%rax)
  200e4f:	00 18                	add    %bl,(%rax)
  200e51:	00 00                	add    %al,(%rax)
  200e53:	00 00                	add    %al,(%rax)
  200e55:	00 00                	add    %al,(%rax)
  200e57:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 200e5d <_DYNAMIC+0xc5>
	...
  200e65:	00 00                	add    %al,(%rax)
  200e67:	00 03                	add    %al,(%rbx)
  200e69:	00 00                	add    %al,(%rax)
  200e6b:	00 00                	add    %al,(%rax)
  200e6d:	00 00                	add    %al,(%rax)
  200e6f:	00 88 0f 20 00 00    	add    %cl,0x200f(%rax)
  200e75:	00 00                	add    %al,(%rax)
  200e77:	00 02                	add    %al,(%rdx)
  200e79:	00 00                	add    %al,(%rax)
  200e7b:	00 00                	add    %al,(%rax)
  200e7d:	00 00                	add    %al,(%rax)
  200e7f:	00 90 00 00 00 00    	add    %dl,0x0(%rax)
  200e85:	00 00                	add    %al,(%rax)
  200e87:	00 14 00             	add    %dl,(%rax,%rax,1)
  200e8a:	00 00                	add    %al,(%rax)
  200e8c:	00 00                	add    %al,(%rax)
  200e8e:	00 00                	add    %al,(%rax)
  200e90:	07                   	(bad)  
  200e91:	00 00                	add    %al,(%rax)
  200e93:	00 00                	add    %al,(%rax)
  200e95:	00 00                	add    %al,(%rax)
  200e97:	00 17                	add    %dl,(%rdi)
  200e99:	00 00                	add    %al,(%rax)
  200e9b:	00 00                	add    %al,(%rax)
  200e9d:	00 00                	add    %al,(%rax)
  200e9f:	00 20                	add    %ah,(%rax)
  200ea1:	06                   	(bad)  
  200ea2:	00 00                	add    %al,(%rax)
  200ea4:	00 00                	add    %al,(%rax)
  200ea6:	00 00                	add    %al,(%rax)
  200ea8:	07                   	(bad)  
  200ea9:	00 00                	add    %al,(%rax)
  200eab:	00 00                	add    %al,(%rax)
  200ead:	00 00                	add    %al,(%rax)
  200eaf:	00 18                	add    %bl,(%rax)
  200eb1:	05 00 00 00 00       	add    $0x0,%eax
  200eb6:	00 00                	add    %al,(%rax)
  200eb8:	08 00                	or     %al,(%rax)
  200eba:	00 00                	add    %al,(%rax)
  200ebc:	00 00                	add    %al,(%rax)
  200ebe:	00 00                	add    %al,(%rax)
  200ec0:	08 01                	or     %al,(%rcx)
  200ec2:	00 00                	add    %al,(%rax)
  200ec4:	00 00                	add    %al,(%rax)
  200ec6:	00 00                	add    %al,(%rax)
  200ec8:	09 00                	or     %eax,(%rax)
  200eca:	00 00                	add    %al,(%rax)
  200ecc:	00 00                	add    %al,(%rax)
  200ece:	00 00                	add    %al,(%rax)
  200ed0:	18 00                	sbb    %al,(%rax)
  200ed2:	00 00                	add    %al,(%rax)
  200ed4:	00 00                	add    %al,(%rax)
  200ed6:	00 00                	add    %al,(%rax)
  200ed8:	1e                   	(bad)  
  200ed9:	00 00                	add    %al,(%rax)
  200edb:	00 00                	add    %al,(%rax)
  200edd:	00 00                	add    %al,(%rax)
  200edf:	00 08                	add    %cl,(%rax)
  200ee1:	00 00                	add    %al,(%rax)
  200ee3:	00 00                	add    %al,(%rax)
  200ee5:	00 00                	add    %al,(%rax)
  200ee7:	00 fb                	add    %bh,%bl
  200ee9:	ff                   	(bad)  
  200eea:	ff 6f 00             	ljmp   *0x0(%rdi)
  200eed:	00 00                	add    %al,(%rax)
  200eef:	00 01                	add    %al,(%rcx)
  200ef1:	00 00                	add    %al,(%rax)
  200ef3:	08 00                	or     %al,(%rax)
  200ef5:	00 00                	add    %al,(%rax)
  200ef7:	00 fe                	add    %bh,%dh
  200ef9:	ff                   	(bad)  
  200efa:	ff 6f 00             	ljmp   *0x0(%rdi)
  200efd:	00 00                	add    %al,(%rax)
  200eff:	00 f8                	add    %bh,%al
  200f01:	04 00                	add    $0x0,%al
  200f03:	00 00                	add    %al,(%rax)
  200f05:	00 00                	add    %al,(%rax)
  200f07:	00 ff                	add    %bh,%bh
  200f09:	ff                   	(bad)  
  200f0a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f0d:	00 00                	add    %al,(%rax)
  200f0f:	00 01                	add    %al,(%rcx)
  200f11:	00 00                	add    %al,(%rax)
  200f13:	00 00                	add    %al,(%rax)
  200f15:	00 00                	add    %al,(%rax)
  200f17:	00 f0                	add    %dh,%al
  200f19:	ff                   	(bad)  
  200f1a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f1d:	00 00                	add    %al,(%rax)
  200f1f:	00 d8                	add    %bl,%al
  200f21:	04 00                	add    $0x0,%al
  200f23:	00 00                	add    %al,(%rax)
  200f25:	00 00                	add    %al,(%rax)
  200f27:	00 f9                	add    %bh,%cl
  200f29:	ff                   	(bad)  
  200f2a:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f2d:	00 00                	add    %al,(%rax)
  200f2f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000200f88 <_GLOBAL_OFFSET_TABLE_>:
  200f88:	98                   	cwtl   
  200f89:	0d 20 00 00 00       	or     $0x20,%eax
	...
  200f9e:	00 00                	add    %al,(%rax)
  200fa0:	e6 06                	out    %al,$0x6
  200fa2:	00 00                	add    %al,(%rax)
  200fa4:	00 00                	add    %al,(%rax)
  200fa6:	00 00                	add    %al,(%rax)
  200fa8:	f6 06 00             	testb  $0x0,(%rsi)
  200fab:	00 00                	add    %al,(%rax)
  200fad:	00 00                	add    %al,(%rax)
  200faf:	00 06                	add    %al,(%rsi)
  200fb1:	07                   	(bad)  
  200fb2:	00 00                	add    %al,(%rax)
  200fb4:	00 00                	add    %al,(%rax)
  200fb6:	00 00                	add    %al,(%rax)
  200fb8:	16                   	(bad)  
  200fb9:	07                   	(bad)  
  200fba:	00 00                	add    %al,(%rax)
  200fbc:	00 00                	add    %al,(%rax)
  200fbe:	00 00                	add    %al,(%rax)
  200fc0:	26 07                	es (bad) 
  200fc2:	00 00                	add    %al,(%rax)
  200fc4:	00 00                	add    %al,(%rax)
  200fc6:	00 00                	add    %al,(%rax)
  200fc8:	36 07                	ss (bad) 
	...

Disassembly of section .data:

0000000000201000 <__data_start>:
	...

0000000000201008 <__dso_handle>:
  201008:	08 10                	or     %dl,(%rax)
  20100a:	20 00                	and    %al,(%rax)
  20100c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000201010 <stdout@@GLIBC_2.2.5>:
	...

0000000000201020 <stdin@@GLIBC_2.2.5>:
	...

0000000000201028 <completed.7698>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x638>
   a:	74 75                	je     81 <_init-0x62f>
   c:	20 37                	and    %dh,(%rdi)
   e:	2e 35 2e 30 2d 33    	cs xor $0x332d302e,%eax
  14:	75 62                	jne    78 <_init-0x638>
  16:	75 6e                	jne    86 <_init-0x62a>
  18:	74 75                	je     8f <_init-0x621>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	38 2e                	cmp    %ch,(%rsi)
  1f:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  22:	20 37                	and    %dh,(%rdi)
  24:	2e                   	cs
  25:	35                   	.byte 0x35
  26:	2e 30 00             	xor    %al,%cs:(%rax)
