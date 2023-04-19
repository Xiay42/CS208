
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bc8 <_init>:
  400bc8:	f3 0f 1e fa          	endbr64 
  400bcc:	48 83 ec 08          	sub    $0x8,%rsp
  400bd0:	48 8b 05 19 34 20 00 	mov    0x203419(%rip),%rax        # 603ff0 <__gmon_start__@Base>
  400bd7:	48 85 c0             	test   %rax,%rax
  400bda:	74 02                	je     400bde <_init+0x16>
  400bdc:	ff d0                	callq  *%rax
  400bde:	48 83 c4 08          	add    $0x8,%rsp
  400be2:	c3                   	retq   

Disassembly of section .plt:

0000000000400bf0 <.plt>:
  400bf0:	ff 35 12 34 20 00    	pushq  0x203412(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bf6:	ff 25 14 34 20 00    	jmpq   *0x203414(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c00 <__errno_location@plt>:
  400c00:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604018 <__errno_location@GLIBC_2.2.5>
  400c06:	68 00 00 00 00       	pushq  $0x0
  400c0b:	e9 e0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c10 <srandom@plt>:
  400c10:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604020 <srandom@GLIBC_2.2.5>
  400c16:	68 01 00 00 00       	pushq  $0x1
  400c1b:	e9 d0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c20 <strncmp@plt>:
  400c20:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604028 <strncmp@GLIBC_2.2.5>
  400c26:	68 02 00 00 00       	pushq  $0x2
  400c2b:	e9 c0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c30 <strcpy@plt>:
  400c30:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604030 <strcpy@GLIBC_2.2.5>
  400c36:	68 03 00 00 00       	pushq  $0x3
  400c3b:	e9 b0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c40 <puts@plt>:
  400c40:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604038 <puts@GLIBC_2.2.5>
  400c46:	68 04 00 00 00       	pushq  $0x4
  400c4b:	e9 a0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c50 <write@plt>:
  400c50:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 604040 <write@GLIBC_2.2.5>
  400c56:	68 05 00 00 00       	pushq  $0x5
  400c5b:	e9 90 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c60 <mmap@plt>:
  400c60:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 604048 <mmap@GLIBC_2.2.5>
  400c66:	68 06 00 00 00       	pushq  $0x6
  400c6b:	e9 80 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c70 <printf@plt>:
  400c70:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 604050 <printf@GLIBC_2.2.5>
  400c76:	68 07 00 00 00       	pushq  $0x7
  400c7b:	e9 70 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c80 <memset@plt>:
  400c80:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 604058 <memset@GLIBC_2.2.5>
  400c86:	68 08 00 00 00       	pushq  $0x8
  400c8b:	e9 60 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c90 <alarm@plt>:
  400c90:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 604060 <alarm@GLIBC_2.2.5>
  400c96:	68 09 00 00 00       	pushq  $0x9
  400c9b:	e9 50 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ca0 <close@plt>:
  400ca0:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 604068 <close@GLIBC_2.2.5>
  400ca6:	68 0a 00 00 00       	pushq  $0xa
  400cab:	e9 40 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cb0 <read@plt>:
  400cb0:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 604070 <read@GLIBC_2.2.5>
  400cb6:	68 0b 00 00 00       	pushq  $0xb
  400cbb:	e9 30 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cc0 <signal@plt>:
  400cc0:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 604078 <signal@GLIBC_2.2.5>
  400cc6:	68 0c 00 00 00       	pushq  $0xc
  400ccb:	e9 20 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cd0 <gethostbyname@plt>:
  400cd0:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 604080 <gethostbyname@GLIBC_2.2.5>
  400cd6:	68 0d 00 00 00       	pushq  $0xd
  400cdb:	e9 10 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ce0 <fprintf@plt>:
  400ce0:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 604088 <fprintf@GLIBC_2.2.5>
  400ce6:	68 0e 00 00 00       	pushq  $0xe
  400ceb:	e9 00 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cf0 <strtol@plt>:
  400cf0:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 604090 <strtol@GLIBC_2.2.5>
  400cf6:	68 0f 00 00 00       	pushq  $0xf
  400cfb:	e9 f0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d00 F<memcpy@plt>:
  400d00:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604098 <memcpy@GLIBC_2.14>
  400d06:	68 10 00 00 00       	pushq  $0x10
  400d0b:	e9 e0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d10 <time@plt>:
  400d10:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 6040a0 <time@GLIBC_2.2.5>
  400d16:	68 11 00 00 00       	pushq  $0x11
  400d1b:	e9 d0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d20 <random@plt>:
  400d20:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 6040a8 <random@GLIBC_2.2.5>
  400d26:	68 12 00 00 00       	pushq  $0x12
  400d2b:	e9 c0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d30 <__isoc99_sscanf@plt>:
  400d30:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 6040b0 <__isoc99_sscanf@GLIBC_2.7>
  400d36:	68 13 00 00 00       	pushq  $0x13
  400d3b:	e9 b0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d40 <munmap@plt>:
  400d40:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 6040b8 <munmap@GLIBC_2.2.5>
  400d46:	68 14 00 00 00       	pushq  $0x14
  400d4b:	e9 a0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d50 <memmove@plt>:
  400d50:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 6040c0 <memmove@GLIBC_2.2.5>
  400d56:	68 15 00 00 00       	pushq  $0x15
  400d5b:	e9 90 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d60 <fopen@plt>:
  400d60:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 6040c8 <fopen@GLIBC_2.2.5>
  400d66:	68 16 00 00 00       	pushq  $0x16
  400d6b:	e9 80 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d70 <getopt@plt>:
  400d70:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 6040d0 <getopt@GLIBC_2.2.5>
  400d76:	68 17 00 00 00       	pushq  $0x17
  400d7b:	e9 70 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d80 <strtoul@plt>:
  400d80:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 6040d8 <strtoul@GLIBC_2.2.5>
  400d86:	68 18 00 00 00       	pushq  $0x18
  400d8b:	e9 60 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d90 <sprintf@plt>:
  400d90:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 6040e0 <sprintf@GLIBC_2.2.5>
  400d96:	68 19 00 00 00       	pushq  $0x19
  400d9b:	e9 50 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400da0 <exit@plt>:
  400da0:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 6040e8 <exit@GLIBC_2.2.5>
  400da6:	68 1a 00 00 00       	pushq  $0x1a
  400dab:	e9 40 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400db0 <connect@plt>:
  400db0:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 6040f0 <connect@GLIBC_2.2.5>
  400db6:	68 1b 00 00 00       	pushq  $0x1b
  400dbb:	e9 30 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dc0 <getc@plt>:
  400dc0:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 6040f8 <getc@GLIBC_2.2.5>
  400dc6:	68 1c 00 00 00       	pushq  $0x1c
  400dcb:	e9 20 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dd0 <socket@plt>:
  400dd0:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604100 <socket@GLIBC_2.2.5>
  400dd6:	68 1d 00 00 00       	pushq  $0x1d
  400ddb:	e9 10 fe ff ff       	jmpq   400bf0 <.plt>

Disassembly of section .text:

0000000000400de0 <_start>:
  400de0:	f3 0f 1e fa          	endbr64 
  400de4:	31 ed                	xor    %ebp,%ebp
  400de6:	49 89 d1             	mov    %rdx,%r9
  400de9:	5e                   	pop    %rsi
  400dea:	48 89 e2             	mov    %rsp,%rdx
  400ded:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400df1:	50                   	push   %rax
  400df2:	54                   	push   %rsp
  400df3:	49 c7 c0 d0 2b 40 00 	mov    $0x402bd0,%r8
  400dfa:	48 c7 c1 60 2b 40 00 	mov    $0x402b60,%rcx
  400e01:	48 c7 c7 12 10 40 00 	mov    $0x401012,%rdi
  400e08:	ff 15 da 31 20 00    	callq  *0x2031da(%rip)        # 603fe8 <__libc_start_main@GLIBC_2.2.5>
  400e0e:	f4                   	hlt    

0000000000400e0f <.annobin_init.c>:
  400e0f:	90                   	nop

0000000000400e10 <_dl_relocate_static_pie>:
  400e10:	f3 0f 1e fa          	endbr64 
  400e14:	c3                   	retq   

0000000000400e15 <.annobin__dl_relocate_static_pie.end>:
  400e15:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400e1c:	00 00 00 
  400e1f:	90                   	nop

0000000000400e20 <deregister_tm_clones>:
  400e20:	48 8d 3d 69 36 20 00 	lea    0x203669(%rip),%rdi        # 604490 <__TMC_END__>
  400e27:	48 8d 05 62 36 20 00 	lea    0x203662(%rip),%rax        # 604490 <__TMC_END__>
  400e2e:	48 39 f8             	cmp    %rdi,%rax
  400e31:	74 15                	je     400e48 <deregister_tm_clones+0x28>
  400e33:	48 8b 05 a6 31 20 00 	mov    0x2031a6(%rip),%rax        # 603fe0 <_ITM_deregisterTMCloneTable@Base>
  400e3a:	48 85 c0             	test   %rax,%rax
  400e3d:	74 09                	je     400e48 <deregister_tm_clones+0x28>
  400e3f:	ff e0                	jmpq   *%rax
  400e41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400e48:	c3                   	retq   
  400e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e50 <register_tm_clones>:
  400e50:	48 8d 3d 39 36 20 00 	lea    0x203639(%rip),%rdi        # 604490 <__TMC_END__>
  400e57:	48 8d 35 32 36 20 00 	lea    0x203632(%rip),%rsi        # 604490 <__TMC_END__>
  400e5e:	48 29 fe             	sub    %rdi,%rsi
  400e61:	48 c1 fe 03          	sar    $0x3,%rsi
  400e65:	48 89 f0             	mov    %rsi,%rax
  400e68:	48 c1 e8 3f          	shr    $0x3f,%rax
  400e6c:	48 01 c6             	add    %rax,%rsi
  400e6f:	48 d1 fe             	sar    %rsi
  400e72:	74 14                	je     400e88 <register_tm_clones+0x38>
  400e74:	48 8b 05 7d 31 20 00 	mov    0x20317d(%rip),%rax        # 603ff8 <_ITM_registerTMCloneTable@Base>
  400e7b:	48 85 c0             	test   %rax,%rax
  400e7e:	74 08                	je     400e88 <register_tm_clones+0x38>
  400e80:	ff e0                	jmpq   *%rax
  400e82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400e88:	c3                   	retq   
  400e89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e90 <__do_global_dtors_aux>:
  400e90:	f3 0f 1e fa          	endbr64 
  400e94:	80 3d 2d 36 20 00 00 	cmpb   $0x0,0x20362d(%rip)        # 6044c8 <completed.7302>
  400e9b:	75 13                	jne    400eb0 <__do_global_dtors_aux+0x20>
  400e9d:	55                   	push   %rbp
  400e9e:	48 89 e5             	mov    %rsp,%rbp
  400ea1:	e8 7a ff ff ff       	callq  400e20 <deregister_tm_clones>
  400ea6:	c6 05 1b 36 20 00 01 	movb   $0x1,0x20361b(%rip)        # 6044c8 <completed.7302>
  400ead:	5d                   	pop    %rbp
  400eae:	c3                   	retq   
  400eaf:	90                   	nop
  400eb0:	c3                   	retq   
  400eb1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400eb8:	00 00 00 00 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <frame_dummy>:
  400ec0:	f3 0f 1e fa          	endbr64 
  400ec4:	eb 8a                	jmp    400e50 <register_tm_clones>

0000000000400ec6 <usage>:
  400ec6:	48 83 ec 08          	sub    $0x8,%rsp
  400eca:	48 89 fe             	mov    %rdi,%rsi
  400ecd:	83 3d 34 36 20 00 00 	cmpl   $0x0,0x203634(%rip)        # 604508 <is_checker>
  400ed4:	74 41                	je     400f17 <usage+0x51>
  400ed6:	bf 00 2c 40 00       	mov    $0x402c00,%edi
  400edb:	b8 00 00 00 00       	mov    $0x0,%eax
  400ee0:	e8 8b fd ff ff       	callq  400c70 <printf@plt>
  400ee5:	bf 38 2c 40 00       	mov    $0x402c38,%edi
  400eea:	e8 51 fd ff ff       	callq  400c40 <puts@plt>
  400eef:	bf 38 2d 40 00       	mov    $0x402d38,%edi
  400ef4:	e8 47 fd ff ff       	callq  400c40 <puts@plt>
  400ef9:	bf 60 2c 40 00       	mov    $0x402c60,%edi
  400efe:	e8 3d fd ff ff       	callq  400c40 <puts@plt>
  400f03:	bf 52 2d 40 00       	mov    $0x402d52,%edi
  400f08:	e8 33 fd ff ff       	callq  400c40 <puts@plt>
  400f0d:	bf 00 00 00 00       	mov    $0x0,%edi
  400f12:	e8 89 fe ff ff       	callq  400da0 <exit@plt>
  400f17:	bf 6e 2d 40 00       	mov    $0x402d6e,%edi
  400f1c:	b8 00 00 00 00       	mov    $0x0,%eax
  400f21:	e8 4a fd ff ff       	callq  400c70 <printf@plt>
  400f26:	bf 88 2c 40 00       	mov    $0x402c88,%edi
  400f2b:	e8 10 fd ff ff       	callq  400c40 <puts@plt>
  400f30:	bf b0 2c 40 00       	mov    $0x402cb0,%edi
  400f35:	e8 06 fd ff ff       	callq  400c40 <puts@plt>
  400f3a:	bf 8c 2d 40 00       	mov    $0x402d8c,%edi
  400f3f:	e8 fc fc ff ff       	callq  400c40 <puts@plt>
  400f44:	eb c7                	jmp    400f0d <usage+0x47>

0000000000400f46 <initialize_target>:
  400f46:	55                   	push   %rbp
  400f47:	53                   	push   %rbx
  400f48:	48 81 ec 08 20 00 00 	sub    $0x2008,%rsp
  400f4f:	89 f5                	mov    %esi,%ebp
  400f51:	89 3d a1 35 20 00    	mov    %edi,0x2035a1(%rip)        # 6044f8 <check_level>
  400f57:	8b 3d eb 31 20 00    	mov    0x2031eb(%rip),%edi        # 604148 <target_id>
  400f5d:	e8 de 1b 00 00       	callq  402b40 <gencookie>
  400f62:	89 05 9c 35 20 00    	mov    %eax,0x20359c(%rip)        # 604504 <cookie>
  400f68:	89 c7                	mov    %eax,%edi
  400f6a:	e8 d1 1b 00 00       	callq  402b40 <gencookie>
  400f6f:	89 05 8b 35 20 00    	mov    %eax,0x20358b(%rip)        # 604500 <authkey>
  400f75:	8b 05 cd 31 20 00    	mov    0x2031cd(%rip),%eax        # 604148 <target_id>
  400f7b:	8d 78 01             	lea    0x1(%rax),%edi
  400f7e:	e8 8d fc ff ff       	callq  400c10 <srandom@plt>
  400f83:	e8 98 fd ff ff       	callq  400d20 <random@plt>
  400f88:	89 c7                	mov    %eax,%edi
  400f8a:	e8 3b 02 00 00       	callq  4011ca <scramble>
  400f8f:	89 c3                	mov    %eax,%ebx
  400f91:	85 ed                	test   %ebp,%ebp
  400f93:	75 3d                	jne    400fd2 <initialize_target+0x8c>
  400f95:	b8 00 00 00 00       	mov    $0x0,%eax
  400f9a:	01 d8                	add    %ebx,%eax
  400f9c:	0f b7 c0             	movzwl %ax,%eax
  400f9f:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  400fa6:	89 c0                	mov    %eax,%eax
  400fa8:	48 89 05 d1 34 20 00 	mov    %rax,0x2034d1(%rip)        # 604480 <buf_offset>
  400faf:	c6 05 72 41 20 00 63 	movb   $0x63,0x204172(%rip)        # 605128 <target_prefix>
  400fb6:	83 3d cb 34 20 00 00 	cmpl   $0x0,0x2034cb(%rip)        # 604488 <notify>
  400fbd:	74 09                	je     400fc8 <initialize_target+0x82>
  400fbf:	83 3d 42 35 20 00 00 	cmpl   $0x0,0x203542(%rip)        # 604508 <is_checker>
  400fc6:	74 22                	je     400fea <initialize_target+0xa4>
  400fc8:	48 81 c4 08 20 00 00 	add    $0x2008,%rsp
  400fcf:	5b                   	pop    %rbx
  400fd0:	5d                   	pop    %rbp
  400fd1:	c3                   	retq   
  400fd2:	bf 00 00 00 00       	mov    $0x0,%edi
  400fd7:	e8 34 fd ff ff       	callq  400d10 <time@plt>
  400fdc:	89 c7                	mov    %eax,%edi
  400fde:	e8 2d fc ff ff       	callq  400c10 <srandom@plt>
  400fe3:	e8 38 fd ff ff       	callq  400d20 <random@plt>
  400fe8:	eb b0                	jmp    400f9a <initialize_target+0x54>
  400fea:	48 89 e7             	mov    %rsp,%rdi
  400fed:	e8 d8 18 00 00       	callq  4028ca <init_driver>
  400ff2:	85 c0                	test   %eax,%eax
  400ff4:	79 d2                	jns    400fc8 <initialize_target+0x82>
  400ff6:	48 89 e6             	mov    %rsp,%rsi
  400ff9:	bf e0 2c 40 00       	mov    $0x402ce0,%edi
  400ffe:	b8 00 00 00 00       	mov    $0x0,%eax
  401003:	e8 68 fc ff ff       	callq  400c70 <printf@plt>
  401008:	bf 08 00 00 00       	mov    $0x8,%edi
  40100d:	e8 8e fd ff ff       	callq  400da0 <exit@plt>

0000000000401012 <main>:
  401012:	41 56                	push   %r14
  401014:	41 55                	push   %r13
  401016:	41 54                	push   %r12
  401018:	55                   	push   %rbp
  401019:	53                   	push   %rbx
  40101a:	89 fd                	mov    %edi,%ebp
  40101c:	48 89 f3             	mov    %rsi,%rbx
  40101f:	be cf 1c 40 00       	mov    $0x401ccf,%esi
  401024:	bf 0b 00 00 00       	mov    $0xb,%edi
  401029:	e8 92 fc ff ff       	callq  400cc0 <signal@plt>
  40102e:	be 81 1c 40 00       	mov    $0x401c81,%esi
  401033:	bf 07 00 00 00       	mov    $0x7,%edi
  401038:	e8 83 fc ff ff       	callq  400cc0 <signal@plt>
  40103d:	be 1d 1d 40 00       	mov    $0x401d1d,%esi
  401042:	bf 04 00 00 00       	mov    $0x4,%edi
  401047:	e8 74 fc ff ff       	callq  400cc0 <signal@plt>
  40104c:	83 3d b5 34 20 00 00 	cmpl   $0x0,0x2034b5(%rip)        # 604508 <is_checker>
  401053:	75 25                	jne    40107a <main+0x68>
  401055:	41 bc ad 2d 40 00    	mov    $0x402dad,%r12d
  40105b:	48 8b 05 3e 34 20 00 	mov    0x20343e(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401062:	48 89 05 87 34 20 00 	mov    %rax,0x203487(%rip)        # 6044f0 <infile>
  401069:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40106f:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401075:	e9 81 00 00 00       	jmpq   4010fb <main+0xe9>
  40107a:	be 6b 1d 40 00       	mov    $0x401d6b,%esi
  40107f:	bf 0e 00 00 00       	mov    $0xe,%edi
  401084:	e8 37 fc ff ff       	callq  400cc0 <signal@plt>
  401089:	bf 05 00 00 00       	mov    $0x5,%edi
  40108e:	e8 fd fb ff ff       	callq  400c90 <alarm@plt>
  401093:	41 bc a5 2d 40 00    	mov    $0x402da5,%r12d
  401099:	eb c0                	jmp    40105b <main+0x49>
  40109b:	48 8b 3b             	mov    (%rbx),%rdi
  40109e:	e8 23 fe ff ff       	callq  400ec6 <usage>
  4010a3:	be 8d 30 40 00       	mov    $0x40308d,%esi
  4010a8:	48 8b 3d f9 33 20 00 	mov    0x2033f9(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  4010af:	e8 ac fc ff ff       	callq  400d60 <fopen@plt>
  4010b4:	48 89 05 35 34 20 00 	mov    %rax,0x203435(%rip)        # 6044f0 <infile>
  4010bb:	48 85 c0             	test   %rax,%rax
  4010be:	75 3b                	jne    4010fb <main+0xe9>
  4010c0:	48 8b 15 e1 33 20 00 	mov    0x2033e1(%rip),%rdx        # 6044a8 <optarg@@GLIBC_2.2.5>
  4010c7:	be b2 2d 40 00       	mov    $0x402db2,%esi
  4010cc:	48 8b 3d ed 33 20 00 	mov    0x2033ed(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  4010d3:	e8 08 fc ff ff       	callq  400ce0 <fprintf@plt>
  4010d8:	b8 01 00 00 00       	mov    $0x1,%eax
  4010dd:	e9 c1 00 00 00       	jmpq   4011a3 <main+0x191>
  4010e2:	ba 10 00 00 00       	mov    $0x10,%edx
  4010e7:	be 00 00 00 00       	mov    $0x0,%esi
  4010ec:	48 8b 3d b5 33 20 00 	mov    0x2033b5(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  4010f3:	e8 88 fc ff ff       	callq  400d80 <strtoul@plt>
  4010f8:	41 89 c6             	mov    %eax,%r14d
  4010fb:	4c 89 e2             	mov    %r12,%rdx
  4010fe:	48 89 de             	mov    %rbx,%rsi
  401101:	89 ef                	mov    %ebp,%edi
  401103:	e8 68 fc ff ff       	callq  400d70 <getopt@plt>
  401108:	3c ff                	cmp    $0xff,%al
  40110a:	74 52                	je     40115e <main+0x14c>
  40110c:	0f be f0             	movsbl %al,%esi
  40110f:	83 e8 61             	sub    $0x61,%eax
  401112:	3c 10                	cmp    $0x10,%al
  401114:	77 31                	ja     401147 <main+0x135>
  401116:	0f b6 c0             	movzbl %al,%eax
  401119:	ff 24 c5 f0 2d 40 00 	jmpq   *0x402df0(,%rax,8)
  401120:	ba 0a 00 00 00       	mov    $0xa,%edx
  401125:	be 00 00 00 00       	mov    $0x0,%esi
  40112a:	48 8b 3d 77 33 20 00 	mov    0x203377(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  401131:	e8 ba fb ff ff       	callq  400cf0 <strtol@plt>
  401136:	41 89 c5             	mov    %eax,%r13d
  401139:	eb c0                	jmp    4010fb <main+0xe9>
  40113b:	c7 05 43 33 20 00 00 	movl   $0x0,0x203343(%rip)        # 604488 <notify>
  401142:	00 00 00 
  401145:	eb b4                	jmp    4010fb <main+0xe9>
  401147:	bf cf 2d 40 00       	mov    $0x402dcf,%edi
  40114c:	b8 00 00 00 00       	mov    $0x0,%eax
  401151:	e8 1a fb ff ff       	callq  400c70 <printf@plt>
  401156:	48 8b 3b             	mov    (%rbx),%rdi
  401159:	e8 68 fd ff ff       	callq  400ec6 <usage>
  40115e:	be 00 00 00 00       	mov    $0x0,%esi
  401163:	44 89 ef             	mov    %r13d,%edi
  401166:	e8 db fd ff ff       	callq  400f46 <initialize_target>
  40116b:	83 3d 96 33 20 00 00 	cmpl   $0x0,0x203396(%rip)        # 604508 <is_checker>
  401172:	74 09                	je     40117d <main+0x16b>
  401174:	44 39 35 85 33 20 00 	cmp    %r14d,0x203385(%rip)        # 604500 <authkey>
  40117b:	75 2f                	jne    4011ac <main+0x19a>
  40117d:	8b 35 81 33 20 00    	mov    0x203381(%rip),%esi        # 604504 <cookie>
  401183:	bf e2 2d 40 00       	mov    $0x402de2,%edi
  401188:	b8 00 00 00 00       	mov    $0x0,%eax
  40118d:	e8 de fa ff ff       	callq  400c70 <printf@plt>
  401192:	48 8b 3d e7 32 20 00 	mov    0x2032e7(%rip),%rdi        # 604480 <buf_offset>
  401199:	e8 9e 0c 00 00       	callq  401e3c <stable_launch>
  40119e:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a3:	5b                   	pop    %rbx
  4011a4:	5d                   	pop    %rbp
  4011a5:	41 5c                	pop    %r12
  4011a7:	41 5d                	pop    %r13
  4011a9:	41 5e                	pop    %r14
  4011ab:	c3                   	retq   
  4011ac:	44 89 f6             	mov    %r14d,%esi
  4011af:	bf 08 2d 40 00       	mov    $0x402d08,%edi
  4011b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4011b9:	e8 b2 fa ff ff       	callq  400c70 <printf@plt>
  4011be:	b8 00 00 00 00       	mov    $0x0,%eax
  4011c3:	e8 bd 07 00 00       	callq  401985 <check_fail>
  4011c8:	eb b3                	jmp    40117d <main+0x16b>

00000000004011ca <scramble>:
  4011ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4011cf:	83 f8 09             	cmp    $0x9,%eax
  4011d2:	77 13                	ja     4011e7 <scramble+0x1d>
  4011d4:	69 d0 78 ec 00 00    	imul   $0xec78,%eax,%edx
  4011da:	01 fa                	add    %edi,%edx
  4011dc:	89 c1                	mov    %eax,%ecx
  4011de:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  4011e2:	83 c0 01             	add    $0x1,%eax
  4011e5:	eb e8                	jmp    4011cf <scramble+0x5>
  4011e7:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4011eb:	69 c0 38 94 00 00    	imul   $0x9438,%eax,%eax
  4011f1:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4011f5:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4011f9:	69 c0 c7 23 00 00    	imul   $0x23c7,%eax,%eax
  4011ff:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401203:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401207:	69 c0 89 da 00 00    	imul   $0xda89,%eax,%eax
  40120d:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401211:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401215:	69 c0 dc e6 00 00    	imul   $0xe6dc,%eax,%eax
  40121b:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40121f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401223:	69 c0 a1 bd 00 00    	imul   $0xbda1,%eax,%eax
  401229:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40122d:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401231:	69 c0 21 98 00 00    	imul   $0x9821,%eax,%eax
  401237:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40123b:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40123f:	69 c0 29 80 00 00    	imul   $0x8029,%eax,%eax
  401245:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401249:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40124d:	69 c0 06 c7 00 00    	imul   $0xc706,%eax,%eax
  401253:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401257:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40125b:	69 c0 5f 7f 00 00    	imul   $0x7f5f,%eax,%eax
  401261:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401265:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401269:	69 c0 2f 92 00 00    	imul   $0x922f,%eax,%eax
  40126f:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401273:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401277:	69 c0 4f a2 00 00    	imul   $0xa24f,%eax,%eax
  40127d:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401281:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401285:	69 c0 b2 4a 00 00    	imul   $0x4ab2,%eax,%eax
  40128b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40128f:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401293:	69 c0 a2 8c 00 00    	imul   $0x8ca2,%eax,%eax
  401299:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40129d:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012a1:	69 c0 51 7b 00 00    	imul   $0x7b51,%eax,%eax
  4012a7:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012ab:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4012af:	69 c0 73 f5 00 00    	imul   $0xf573,%eax,%eax
  4012b5:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4012b9:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4012bd:	69 c0 66 2c 00 00    	imul   $0x2c66,%eax,%eax
  4012c3:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4012c7:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4012cb:	69 c0 75 d9 00 00    	imul   $0xd975,%eax,%eax
  4012d1:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4012d5:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4012d9:	69 c0 22 8c 00 00    	imul   $0x8c22,%eax,%eax
  4012df:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4012e3:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4012e7:	69 c0 6f e6 00 00    	imul   $0xe66f,%eax,%eax
  4012ed:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4012f1:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012f5:	69 c0 f3 73 00 00    	imul   $0x73f3,%eax,%eax
  4012fb:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012ff:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401303:	69 c0 9f 89 00 00    	imul   $0x899f,%eax,%eax
  401309:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40130d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401311:	69 c0 0e fd 00 00    	imul   $0xfd0e,%eax,%eax
  401317:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40131b:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40131f:	69 c0 8d a5 00 00    	imul   $0xa58d,%eax,%eax
  401325:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401329:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40132d:	69 c0 2c f5 00 00    	imul   $0xf52c,%eax,%eax
  401333:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401337:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40133b:	69 c0 31 bf 00 00    	imul   $0xbf31,%eax,%eax
  401341:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401345:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401349:	69 c0 00 66 00 00    	imul   $0x6600,%eax,%eax
  40134f:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401353:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401357:	69 c0 2d 44 00 00    	imul   $0x442d,%eax,%eax
  40135d:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401361:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401365:	69 c0 03 d9 00 00    	imul   $0xd903,%eax,%eax
  40136b:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40136f:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401373:	69 c0 5c b2 00 00    	imul   $0xb25c,%eax,%eax
  401379:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40137d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401381:	69 c0 be 10 00 00    	imul   $0x10be,%eax,%eax
  401387:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40138b:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40138f:	69 c0 bf 2d 00 00    	imul   $0x2dbf,%eax,%eax
  401395:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401399:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40139d:	69 c0 7a 31 00 00    	imul   $0x317a,%eax,%eax
  4013a3:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013a7:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013ab:	69 c0 52 8d 00 00    	imul   $0x8d52,%eax,%eax
  4013b1:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013b5:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4013b9:	69 c0 33 bb 00 00    	imul   $0xbb33,%eax,%eax
  4013bf:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4013c3:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013c7:	69 c0 9c 30 00 00    	imul   $0x309c,%eax,%eax
  4013cd:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013d1:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013d5:	69 c0 d2 17 00 00    	imul   $0x17d2,%eax,%eax
  4013db:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013df:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013e3:	69 c0 3a 3b 00 00    	imul   $0x3b3a,%eax,%eax
  4013e9:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013ed:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013f1:	69 c0 04 c4 00 00    	imul   $0xc404,%eax,%eax
  4013f7:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013fb:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013ff:	69 c0 f5 d8 00 00    	imul   $0xd8f5,%eax,%eax
  401405:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401409:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40140d:	69 c0 b4 05 00 00    	imul   $0x5b4,%eax,%eax
  401413:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401417:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40141b:	69 c0 8b 40 00 00    	imul   $0x408b,%eax,%eax
  401421:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401425:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401429:	69 c0 a6 f9 00 00    	imul   $0xf9a6,%eax,%eax
  40142f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401433:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401437:	69 c0 67 1c 00 00    	imul   $0x1c67,%eax,%eax
  40143d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401441:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401445:	69 c0 88 55 00 00    	imul   $0x5588,%eax,%eax
  40144b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40144f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401453:	69 c0 fe 26 00 00    	imul   $0x26fe,%eax,%eax
  401459:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40145d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401461:	69 c0 93 76 00 00    	imul   $0x7693,%eax,%eax
  401467:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40146b:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40146f:	69 c0 6b a3 00 00    	imul   $0xa36b,%eax,%eax
  401475:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401479:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40147d:	69 c0 f2 5b 00 00    	imul   $0x5bf2,%eax,%eax
  401483:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401487:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40148b:	69 c0 aa 65 00 00    	imul   $0x65aa,%eax,%eax
  401491:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401495:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401499:	69 c0 7f a4 00 00    	imul   $0xa47f,%eax,%eax
  40149f:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014a3:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014a7:	69 c0 4c 46 00 00    	imul   $0x464c,%eax,%eax
  4014ad:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014b1:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4014b5:	69 c0 82 50 00 00    	imul   $0x5082,%eax,%eax
  4014bb:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4014bf:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014c3:	69 c0 33 d1 00 00    	imul   $0xd133,%eax,%eax
  4014c9:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014cd:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014d1:	69 c0 4e 62 00 00    	imul   $0x624e,%eax,%eax
  4014d7:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014db:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014df:	69 c0 b7 cd 00 00    	imul   $0xcdb7,%eax,%eax
  4014e5:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014e9:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014ed:	69 c0 4f 42 00 00    	imul   $0x424f,%eax,%eax
  4014f3:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014f7:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014fb:	69 c0 b7 d3 00 00    	imul   $0xd3b7,%eax,%eax
  401501:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401505:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401509:	69 c0 fb 92 00 00    	imul   $0x92fb,%eax,%eax
  40150f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401513:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401517:	69 c0 9f 0e 00 00    	imul   $0xe9f,%eax,%eax
  40151d:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401521:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401525:	69 c0 e1 be 00 00    	imul   $0xbee1,%eax,%eax
  40152b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40152f:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401533:	69 c0 ca 4e 00 00    	imul   $0x4eca,%eax,%eax
  401539:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40153d:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401541:	69 c0 5a 8a 00 00    	imul   $0x8a5a,%eax,%eax
  401547:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40154b:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40154f:	69 c0 82 dd 00 00    	imul   $0xdd82,%eax,%eax
  401555:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401559:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40155d:	69 c0 f3 22 00 00    	imul   $0x22f3,%eax,%eax
  401563:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401567:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40156b:	69 c0 73 fd 00 00    	imul   $0xfd73,%eax,%eax
  401571:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401575:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401579:	69 c0 73 d9 00 00    	imul   $0xd973,%eax,%eax
  40157f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401583:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401587:	69 c0 c4 83 00 00    	imul   $0x83c4,%eax,%eax
  40158d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401591:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401595:	69 c0 46 c5 00 00    	imul   $0xc546,%eax,%eax
  40159b:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40159f:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015a3:	69 c0 7b 3e 00 00    	imul   $0x3e7b,%eax,%eax
  4015a9:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015ad:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015b1:	69 c0 20 ff 00 00    	imul   $0xff20,%eax,%eax
  4015b7:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015bb:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4015bf:	69 c0 97 8f 00 00    	imul   $0x8f97,%eax,%eax
  4015c5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4015c9:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015cd:	69 c0 75 1a 00 00    	imul   $0x1a75,%eax,%eax
  4015d3:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015d7:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015db:	69 c0 64 7d 00 00    	imul   $0x7d64,%eax,%eax
  4015e1:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015e5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4015e9:	69 c0 6c 53 00 00    	imul   $0x536c,%eax,%eax
  4015ef:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4015f3:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015f7:	69 c0 f4 95 00 00    	imul   $0x95f4,%eax,%eax
  4015fd:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401601:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401605:	69 c0 a0 c1 00 00    	imul   $0xc1a0,%eax,%eax
  40160b:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40160f:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401613:	69 c0 c2 47 00 00    	imul   $0x47c2,%eax,%eax
  401619:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40161d:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401621:	69 c0 f4 d6 00 00    	imul   $0xd6f4,%eax,%eax
  401627:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40162b:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40162f:	69 c0 48 32 00 00    	imul   $0x3248,%eax,%eax
  401635:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401639:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40163d:	69 c0 71 68 00 00    	imul   $0x6871,%eax,%eax
  401643:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401647:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40164b:	69 c0 5a c1 00 00    	imul   $0xc15a,%eax,%eax
  401651:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401655:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401659:	69 c0 7a 73 00 00    	imul   $0x737a,%eax,%eax
  40165f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401663:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401667:	69 c0 d9 6b 00 00    	imul   $0x6bd9,%eax,%eax
  40166d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401671:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401675:	69 c0 16 9a 00 00    	imul   $0x9a16,%eax,%eax
  40167b:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40167f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401683:	69 c0 56 60 00 00    	imul   $0x6056,%eax,%eax
  401689:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40168d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401691:	69 c0 87 b6 00 00    	imul   $0xb687,%eax,%eax
  401697:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40169b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40169f:	69 c0 a5 da 00 00    	imul   $0xdaa5,%eax,%eax
  4016a5:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016a9:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016ad:	69 c0 3c 53 00 00    	imul   $0x533c,%eax,%eax
  4016b3:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016b7:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4016bb:	69 c0 6c 7e 00 00    	imul   $0x7e6c,%eax,%eax
  4016c1:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016c5:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016c9:	69 c0 0d e4 00 00    	imul   $0xe40d,%eax,%eax
  4016cf:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016d3:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016d7:	69 c0 f6 b8 00 00    	imul   $0xb8f6,%eax,%eax
  4016dd:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016e1:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4016e5:	69 c0 20 f9 00 00    	imul   $0xf920,%eax,%eax
  4016eb:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4016ef:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016f3:	69 c0 a8 f1 00 00    	imul   $0xf1a8,%eax,%eax
  4016f9:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4016fd:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401701:	69 c0 fd 25 00 00    	imul   $0x25fd,%eax,%eax
  401707:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40170b:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40170f:	69 c0 fc c9 00 00    	imul   $0xc9fc,%eax,%eax
  401715:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401719:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40171d:	69 c0 ab 53 00 00    	imul   $0x53ab,%eax,%eax
  401723:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401727:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40172b:	69 c0 52 d0 00 00    	imul   $0xd052,%eax,%eax
  401731:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401735:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401739:	69 c0 74 d0 00 00    	imul   $0xd074,%eax,%eax
  40173f:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401743:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401747:	69 c0 e7 ff 00 00    	imul   $0xffe7,%eax,%eax
  40174d:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401751:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401755:	69 c0 80 e6 00 00    	imul   $0xe680,%eax,%eax
  40175b:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40175f:	ba 00 00 00 00       	mov    $0x0,%edx
  401764:	b8 00 00 00 00       	mov    $0x0,%eax
  401769:	83 fa 09             	cmp    $0x9,%edx
  40176c:	77 0d                	ja     40177b <scramble+0x5b1>
  40176e:	89 d1                	mov    %edx,%ecx
  401770:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401774:	01 c8                	add    %ecx,%eax
  401776:	83 c2 01             	add    $0x1,%edx
  401779:	eb ee                	jmp    401769 <scramble+0x59f>
  40177b:	c3                   	retq   

000000000040177c <getbuf>:
  40177c:	48 83 ec 18          	sub    $0x18,%rsp
  401780:	48 89 e7             	mov    %rsp,%rdi
  401783:	e8 2c 02 00 00       	callq  4019b4 <Gets>
  401788:	b8 01 00 00 00       	mov    $0x1,%eax
  40178d:	48 83 c4 18          	add    $0x18,%rsp
  401791:	c3                   	retq   

0000000000401792 <touch1>:
  401792:	48 83 ec 08          	sub    $0x8,%rsp
  401796:	c7 05 5c 2d 20 00 01 	movl   $0x1,0x202d5c(%rip)        # 6044fc <vlevel>
  40179d:	00 00 00 
  4017a0:	bf e4 2e 40 00       	mov    $0x402ee4,%edi
  4017a5:	e8 96 f4 ff ff       	callq  400c40 <puts@plt>
  4017aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4017af:	e8 f3 03 00 00       	callq  401ba7 <validate>
  4017b4:	bf 00 00 00 00       	mov    $0x0,%edi
  4017b9:	e8 e2 f5 ff ff       	callq  400da0 <exit@plt>

00000000004017be <touch2>:
  4017be:	48 83 ec 08          	sub    $0x8,%rsp
  4017c2:	89 fe                	mov    %edi,%esi
  4017c4:	c7 05 2e 2d 20 00 02 	movl   $0x2,0x202d2e(%rip)        # 6044fc <vlevel>
  4017cb:	00 00 00 
  4017ce:	39 3d 30 2d 20 00    	cmp    %edi,0x202d30(%rip)        # 604504 <cookie>
  4017d4:	74 23                	je     4017f9 <touch2+0x3b>
  4017d6:	bf 30 2f 40 00       	mov    $0x402f30,%edi
  4017db:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e0:	e8 8b f4 ff ff       	callq  400c70 <printf@plt>
  4017e5:	bf 02 00 00 00       	mov    $0x2,%edi
  4017ea:	e8 6a 04 00 00       	callq  401c59 <fail>
  4017ef:	bf 00 00 00 00       	mov    $0x0,%edi
  4017f4:	e8 a7 f5 ff ff       	callq  400da0 <exit@plt>
  4017f9:	bf 08 2f 40 00       	mov    $0x402f08,%edi
  4017fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401803:	e8 68 f4 ff ff       	callq  400c70 <printf@plt>
  401808:	bf 02 00 00 00       	mov    $0x2,%edi
  40180d:	e8 95 03 00 00       	callq  401ba7 <validate>
  401812:	eb db                	jmp    4017ef <touch2+0x31>

0000000000401814 <hexmatch>:
  401814:	41 54                	push   %r12
  401816:	55                   	push   %rbp
  401817:	53                   	push   %rbx
  401818:	48 83 ec 70          	sub    $0x70,%rsp
  40181c:	89 fd                	mov    %edi,%ebp
  40181e:	48 89 f3             	mov    %rsi,%rbx
  401821:	e8 fa f4 ff ff       	callq  400d20 <random@plt>
  401826:	48 89 c1             	mov    %rax,%rcx
  401829:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401830:	0a d7 a3 
  401833:	48 f7 ea             	imul   %rdx
  401836:	48 01 ca             	add    %rcx,%rdx
  401839:	48 c1 fa 06          	sar    $0x6,%rdx
  40183d:	48 89 c8             	mov    %rcx,%rax
  401840:	48 c1 f8 3f          	sar    $0x3f,%rax
  401844:	48 29 c2             	sub    %rax,%rdx
  401847:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  40184b:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  40184f:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401856:	00 
  401857:	48 29 c1             	sub    %rax,%rcx
  40185a:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  40185e:	89 ea                	mov    %ebp,%edx
  401860:	be 01 2f 40 00       	mov    $0x402f01,%esi
  401865:	4c 89 e7             	mov    %r12,%rdi
  401868:	b8 00 00 00 00       	mov    $0x0,%eax
  40186d:	e8 1e f5 ff ff       	callq  400d90 <sprintf@plt>
  401872:	ba 09 00 00 00       	mov    $0x9,%edx
  401877:	4c 89 e6             	mov    %r12,%rsi
  40187a:	48 89 df             	mov    %rbx,%rdi
  40187d:	e8 9e f3 ff ff       	callq  400c20 <strncmp@plt>
  401882:	85 c0                	test   %eax,%eax
  401884:	0f 94 c0             	sete   %al
  401887:	0f b6 c0             	movzbl %al,%eax
  40188a:	48 83 c4 70          	add    $0x70,%rsp
  40188e:	5b                   	pop    %rbx
  40188f:	5d                   	pop    %rbp
  401890:	41 5c                	pop    %r12
  401892:	c3                   	retq   

0000000000401893 <touch3>:
  401893:	53                   	push   %rbx
  401894:	48 89 fb             	mov    %rdi,%rbx
  401897:	c7 05 5b 2c 20 00 03 	movl   $0x3,0x202c5b(%rip)        # 6044fc <vlevel>
  40189e:	00 00 00 
  4018a1:	48 89 fe             	mov    %rdi,%rsi
  4018a4:	8b 3d 5a 2c 20 00    	mov    0x202c5a(%rip),%edi        # 604504 <cookie>
  4018aa:	e8 65 ff ff ff       	callq  401814 <hexmatch>
  4018af:	85 c0                	test   %eax,%eax
  4018b1:	74 26                	je     4018d9 <touch3+0x46>
  4018b3:	48 89 de             	mov    %rbx,%rsi
  4018b6:	bf 58 2f 40 00       	mov    $0x402f58,%edi
  4018bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c0:	e8 ab f3 ff ff       	callq  400c70 <printf@plt>
  4018c5:	bf 03 00 00 00       	mov    $0x3,%edi
  4018ca:	e8 d8 02 00 00       	callq  401ba7 <validate>
  4018cf:	bf 00 00 00 00       	mov    $0x0,%edi
  4018d4:	e8 c7 f4 ff ff       	callq  400da0 <exit@plt>
  4018d9:	48 89 de             	mov    %rbx,%rsi
  4018dc:	bf 80 2f 40 00       	mov    $0x402f80,%edi
  4018e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e6:	e8 85 f3 ff ff       	callq  400c70 <printf@plt>
  4018eb:	bf 03 00 00 00       	mov    $0x3,%edi
  4018f0:	e8 64 03 00 00       	callq  401c59 <fail>
  4018f5:	eb d8                	jmp    4018cf <touch3+0x3c>

00000000004018f7 <test>:
  4018f7:	48 83 ec 08          	sub    $0x8,%rsp
  4018fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401900:	e8 77 fe ff ff       	callq  40177c <getbuf>
  401905:	89 c6                	mov    %eax,%esi
  401907:	bf a8 2f 40 00       	mov    $0x402fa8,%edi
  40190c:	b8 00 00 00 00       	mov    $0x0,%eax
  401911:	e8 5a f3 ff ff       	callq  400c70 <printf@plt>
  401916:	48 83 c4 08          	add    $0x8,%rsp
  40191a:	c3                   	retq   

000000000040191b <save_char>:
  40191b:	8b 05 03 38 20 00    	mov    0x203803(%rip),%eax        # 605124 <gets_cnt>
  401921:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401926:	7f 49                	jg     401971 <save_char+0x56>
  401928:	89 f9                	mov    %edi,%ecx
  40192a:	c0 e9 04             	shr    $0x4,%cl
  40192d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401930:	83 e1 0f             	and    $0xf,%ecx
  401933:	0f b6 b1 d0 32 40 00 	movzbl 0x4032d0(%rcx),%esi
  40193a:	48 63 ca             	movslq %edx,%rcx
  40193d:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  401944:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401947:	83 e7 0f             	and    $0xf,%edi
  40194a:	0f b6 b7 d0 32 40 00 	movzbl 0x4032d0(%rdi),%esi
  401951:	48 63 c9             	movslq %ecx,%rcx
  401954:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  40195b:	83 c2 02             	add    $0x2,%edx
  40195e:	48 63 d2             	movslq %edx,%rdx
  401961:	c6 82 20 45 60 00 20 	movb   $0x20,0x604520(%rdx)
  401968:	83 c0 01             	add    $0x1,%eax
  40196b:	89 05 b3 37 20 00    	mov    %eax,0x2037b3(%rip)        # 605124 <gets_cnt>
  401971:	c3                   	retq   

0000000000401972 <save_term>:
  401972:	8b 05 ac 37 20 00    	mov    0x2037ac(%rip),%eax        # 605124 <gets_cnt>
  401978:	8d 04 40             	lea    (%rax,%rax,2),%eax
  40197b:	48 98                	cltq   
  40197d:	c6 80 20 45 60 00 00 	movb   $0x0,0x604520(%rax)
  401984:	c3                   	retq   

0000000000401985 <check_fail>:
  401985:	48 83 ec 08          	sub    $0x8,%rsp
  401989:	0f be 35 98 37 20 00 	movsbl 0x203798(%rip),%esi        # 605128 <target_prefix>
  401990:	b9 20 45 60 00       	mov    $0x604520,%ecx
  401995:	8b 15 5d 2b 20 00    	mov    0x202b5d(%rip),%edx        # 6044f8 <check_level>
  40199b:	bf cb 2f 40 00       	mov    $0x402fcb,%edi
  4019a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a5:	e8 c6 f2 ff ff       	callq  400c70 <printf@plt>
  4019aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4019af:	e8 ec f3 ff ff       	callq  400da0 <exit@plt>

00000000004019b4 <Gets>:
  4019b4:	41 54                	push   %r12
  4019b6:	55                   	push   %rbp
  4019b7:	53                   	push   %rbx
  4019b8:	49 89 fc             	mov    %rdi,%r12
  4019bb:	c7 05 5f 37 20 00 00 	movl   $0x0,0x20375f(%rip)        # 605124 <gets_cnt>
  4019c2:	00 00 00 
  4019c5:	48 89 fb             	mov    %rdi,%rbx
  4019c8:	48 8b 3d 21 2b 20 00 	mov    0x202b21(%rip),%rdi        # 6044f0 <infile>
  4019cf:	e8 ec f3 ff ff       	callq  400dc0 <getc@plt>
  4019d4:	83 f8 ff             	cmp    $0xffffffff,%eax
  4019d7:	74 18                	je     4019f1 <Gets+0x3d>
  4019d9:	83 f8 0a             	cmp    $0xa,%eax
  4019dc:	74 13                	je     4019f1 <Gets+0x3d>
  4019de:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4019e2:	88 03                	mov    %al,(%rbx)
  4019e4:	0f b6 f8             	movzbl %al,%edi
  4019e7:	e8 2f ff ff ff       	callq  40191b <save_char>
  4019ec:	48 89 eb             	mov    %rbp,%rbx
  4019ef:	eb d7                	jmp    4019c8 <Gets+0x14>
  4019f1:	c6 03 00             	movb   $0x0,(%rbx)
  4019f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4019f9:	e8 74 ff ff ff       	callq  401972 <save_term>
  4019fe:	4c 89 e0             	mov    %r12,%rax
  401a01:	5b                   	pop    %rbx
  401a02:	5d                   	pop    %rbp
  401a03:	41 5c                	pop    %r12
  401a05:	c3                   	retq   

0000000000401a06 <notify_server>:
  401a06:	83 3d fb 2a 20 00 00 	cmpl   $0x0,0x202afb(%rip)        # 604508 <is_checker>
  401a0d:	0f 85 93 01 00 00    	jne    401ba6 <notify_server+0x1a0>
  401a13:	55                   	push   %rbp
  401a14:	53                   	push   %rbx
  401a15:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401a1c:	89 fb                	mov    %edi,%ebx
  401a1e:	81 3d fc 36 20 00 9c 	cmpl   $0x1f9c,0x2036fc(%rip)        # 605124 <gets_cnt>
  401a25:	1f 00 00 
  401a28:	0f 8f ad 00 00 00    	jg     401adb <notify_server+0xd5>
  401a2e:	44 0f be 0d f2 36 20 	movsbl 0x2036f2(%rip),%r9d        # 605128 <target_prefix>
  401a35:	00 
  401a36:	83 3d 4b 2a 20 00 00 	cmpl   $0x0,0x202a4b(%rip)        # 604488 <notify>
  401a3d:	0f 84 b1 00 00 00    	je     401af4 <notify_server+0xee>
  401a43:	44 8b 05 b6 2a 20 00 	mov    0x202ab6(%rip),%r8d        # 604500 <authkey>
  401a4a:	85 db                	test   %ebx,%ebx
  401a4c:	0f 84 ad 00 00 00    	je     401aff <notify_server+0xf9>
  401a52:	bd e6 2f 40 00       	mov    $0x402fe6,%ebp
  401a57:	68 20 45 60 00       	pushq  $0x604520
  401a5c:	56                   	push   %rsi
  401a5d:	48 89 e9             	mov    %rbp,%rcx
  401a60:	8b 15 e2 26 20 00    	mov    0x2026e2(%rip),%edx        # 604148 <target_id>
  401a66:	be eb 2f 40 00       	mov    $0x402feb,%esi
  401a6b:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401a72:	00 
  401a73:	b8 00 00 00 00       	mov    $0x0,%eax
  401a78:	e8 13 f3 ff ff       	callq  400d90 <sprintf@plt>
  401a7d:	48 83 c4 10          	add    $0x10,%rsp
  401a81:	83 3d 00 2a 20 00 00 	cmpl   $0x0,0x202a00(%rip)        # 604488 <notify>
  401a88:	0f 84 ab 00 00 00    	je     401b39 <notify_server+0x133>
  401a8e:	85 db                	test   %ebx,%ebx
  401a90:	0f 84 8f 00 00 00    	je     401b25 <notify_server+0x11f>
  401a96:	49 89 e1             	mov    %rsp,%r9
  401a99:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401a9f:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401aa6:	00 
  401aa7:	48 8b 15 a2 26 20 00 	mov    0x2026a2(%rip),%rdx        # 604150 <lab>
  401aae:	48 8b 35 a3 26 20 00 	mov    0x2026a3(%rip),%rsi        # 604158 <course>
  401ab5:	48 8b 3d 84 26 20 00 	mov    0x202684(%rip),%rdi        # 604140 <user_id>
  401abc:	e8 e5 0f 00 00       	callq  402aa6 <driver_post>
  401ac1:	85 c0                	test   %eax,%eax
  401ac3:	78 44                	js     401b09 <notify_server+0x103>
  401ac5:	bf 30 31 40 00       	mov    $0x403130,%edi
  401aca:	e8 71 f1 ff ff       	callq  400c40 <puts@plt>
  401acf:	bf 13 30 40 00       	mov    $0x403013,%edi
  401ad4:	e8 67 f1 ff ff       	callq  400c40 <puts@plt>
  401ad9:	eb 54                	jmp    401b2f <notify_server+0x129>
  401adb:	bf 00 31 40 00       	mov    $0x403100,%edi
  401ae0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae5:	e8 86 f1 ff ff       	callq  400c70 <printf@plt>
  401aea:	bf 01 00 00 00       	mov    $0x1,%edi
  401aef:	e8 ac f2 ff ff       	callq  400da0 <exit@plt>
  401af4:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401afa:	e9 4b ff ff ff       	jmpq   401a4a <notify_server+0x44>
  401aff:	bd e1 2f 40 00       	mov    $0x402fe1,%ebp
  401b04:	e9 4e ff ff ff       	jmpq   401a57 <notify_server+0x51>
  401b09:	48 89 e6             	mov    %rsp,%rsi
  401b0c:	bf 07 30 40 00       	mov    $0x403007,%edi
  401b11:	b8 00 00 00 00       	mov    $0x0,%eax
  401b16:	e8 55 f1 ff ff       	callq  400c70 <printf@plt>
  401b1b:	bf 01 00 00 00       	mov    $0x1,%edi
  401b20:	e8 7b f2 ff ff       	callq  400da0 <exit@plt>
  401b25:	bf 1d 30 40 00       	mov    $0x40301d,%edi
  401b2a:	e8 11 f1 ff ff       	callq  400c40 <puts@plt>
  401b2f:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401b36:	5b                   	pop    %rbx
  401b37:	5d                   	pop    %rbp
  401b38:	c3                   	retq   
  401b39:	48 89 ee             	mov    %rbp,%rsi
  401b3c:	bf 68 31 40 00       	mov    $0x403168,%edi
  401b41:	b8 00 00 00 00       	mov    $0x0,%eax
  401b46:	e8 25 f1 ff ff       	callq  400c70 <printf@plt>
  401b4b:	48 8b 35 ee 25 20 00 	mov    0x2025ee(%rip),%rsi        # 604140 <user_id>
  401b52:	bf 24 30 40 00       	mov    $0x403024,%edi
  401b57:	b8 00 00 00 00       	mov    $0x0,%eax
  401b5c:	e8 0f f1 ff ff       	callq  400c70 <printf@plt>
  401b61:	48 8b 35 f0 25 20 00 	mov    0x2025f0(%rip),%rsi        # 604158 <course>
  401b68:	bf 31 30 40 00       	mov    $0x403031,%edi
  401b6d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b72:	e8 f9 f0 ff ff       	callq  400c70 <printf@plt>
  401b77:	48 8b 35 d2 25 20 00 	mov    0x2025d2(%rip),%rsi        # 604150 <lab>
  401b7e:	bf 3d 30 40 00       	mov    $0x40303d,%edi
  401b83:	b8 00 00 00 00       	mov    $0x0,%eax
  401b88:	e8 e3 f0 ff ff       	callq  400c70 <printf@plt>
  401b8d:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401b94:	00 
  401b95:	bf 46 30 40 00       	mov    $0x403046,%edi
  401b9a:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9f:	e8 cc f0 ff ff       	callq  400c70 <printf@plt>
  401ba4:	eb 89                	jmp    401b2f <notify_server+0x129>
  401ba6:	c3                   	retq   

0000000000401ba7 <validate>:
  401ba7:	53                   	push   %rbx
  401ba8:	89 fb                	mov    %edi,%ebx
  401baa:	83 3d 57 29 20 00 00 	cmpl   $0x0,0x202957(%rip)        # 604508 <is_checker>
  401bb1:	74 60                	je     401c13 <validate+0x6c>
  401bb3:	39 3d 43 29 20 00    	cmp    %edi,0x202943(%rip)        # 6044fc <vlevel>
  401bb9:	75 29                	jne    401be4 <validate+0x3d>
  401bbb:	8b 35 37 29 20 00    	mov    0x202937(%rip),%esi        # 6044f8 <check_level>
  401bc1:	39 fe                	cmp    %edi,%esi
  401bc3:	75 33                	jne    401bf8 <validate+0x51>
  401bc5:	0f be 35 5c 35 20 00 	movsbl 0x20355c(%rip),%esi        # 605128 <target_prefix>
  401bcc:	b9 20 45 60 00       	mov    $0x604520,%ecx
  401bd1:	89 fa                	mov    %edi,%edx
  401bd3:	bf 70 30 40 00       	mov    $0x403070,%edi
  401bd8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bdd:	e8 8e f0 ff ff       	callq  400c70 <printf@plt>
  401be2:	5b                   	pop    %rbx
  401be3:	c3                   	retq   
  401be4:	bf 52 30 40 00       	mov    $0x403052,%edi
  401be9:	e8 52 f0 ff ff       	callq  400c40 <puts@plt>
  401bee:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf3:	e8 8d fd ff ff       	callq  401985 <check_fail>
  401bf8:	89 fa                	mov    %edi,%edx
  401bfa:	bf 90 31 40 00       	mov    $0x403190,%edi
  401bff:	b8 00 00 00 00       	mov    $0x0,%eax
  401c04:	e8 67 f0 ff ff       	callq  400c70 <printf@plt>
  401c09:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0e:	e8 72 fd ff ff       	callq  401985 <check_fail>
  401c13:	39 3d e3 28 20 00    	cmp    %edi,0x2028e3(%rip)        # 6044fc <vlevel>
  401c19:	74 18                	je     401c33 <validate+0x8c>
  401c1b:	bf 52 30 40 00       	mov    $0x403052,%edi
  401c20:	e8 1b f0 ff ff       	callq  400c40 <puts@plt>
  401c25:	89 de                	mov    %ebx,%esi
  401c27:	bf 00 00 00 00       	mov    $0x0,%edi
  401c2c:	e8 d5 fd ff ff       	callq  401a06 <notify_server>
  401c31:	eb af                	jmp    401be2 <validate+0x3b>
  401c33:	0f be 15 ee 34 20 00 	movsbl 0x2034ee(%rip),%edx        # 605128 <target_prefix>
  401c3a:	89 fe                	mov    %edi,%esi
  401c3c:	bf b8 31 40 00       	mov    $0x4031b8,%edi
  401c41:	b8 00 00 00 00       	mov    $0x0,%eax
  401c46:	e8 25 f0 ff ff       	callq  400c70 <printf@plt>
  401c4b:	89 de                	mov    %ebx,%esi
  401c4d:	bf 01 00 00 00       	mov    $0x1,%edi
  401c52:	e8 af fd ff ff       	callq  401a06 <notify_server>
  401c57:	eb 89                	jmp    401be2 <validate+0x3b>

0000000000401c59 <fail>:
  401c59:	48 83 ec 08          	sub    $0x8,%rsp
  401c5d:	83 3d a4 28 20 00 00 	cmpl   $0x0,0x2028a4(%rip)        # 604508 <is_checker>
  401c64:	75 11                	jne    401c77 <fail+0x1e>
  401c66:	89 fe                	mov    %edi,%esi
  401c68:	bf 00 00 00 00       	mov    $0x0,%edi
  401c6d:	e8 94 fd ff ff       	callq  401a06 <notify_server>
  401c72:	48 83 c4 08          	add    $0x8,%rsp
  401c76:	c3                   	retq   
  401c77:	b8 00 00 00 00       	mov    $0x0,%eax
  401c7c:	e8 04 fd ff ff       	callq  401985 <check_fail>

0000000000401c81 <bushandler>:
  401c81:	48 83 ec 08          	sub    $0x8,%rsp
  401c85:	83 3d 7c 28 20 00 00 	cmpl   $0x0,0x20287c(%rip)        # 604508 <is_checker>
  401c8c:	74 14                	je     401ca2 <bushandler+0x21>
  401c8e:	bf 85 30 40 00       	mov    $0x403085,%edi
  401c93:	e8 a8 ef ff ff       	callq  400c40 <puts@plt>
  401c98:	b8 00 00 00 00       	mov    $0x0,%eax
  401c9d:	e8 e3 fc ff ff       	callq  401985 <check_fail>
  401ca2:	bf f0 31 40 00       	mov    $0x4031f0,%edi
  401ca7:	e8 94 ef ff ff       	callq  400c40 <puts@plt>
  401cac:	bf 8f 30 40 00       	mov    $0x40308f,%edi
  401cb1:	e8 8a ef ff ff       	callq  400c40 <puts@plt>
  401cb6:	be 00 00 00 00       	mov    $0x0,%esi
  401cbb:	bf 00 00 00 00       	mov    $0x0,%edi
  401cc0:	e8 41 fd ff ff       	callq  401a06 <notify_server>
  401cc5:	bf 01 00 00 00       	mov    $0x1,%edi
  401cca:	e8 d1 f0 ff ff       	callq  400da0 <exit@plt>

0000000000401ccf <seghandler>:
  401ccf:	48 83 ec 08          	sub    $0x8,%rsp
  401cd3:	83 3d 2e 28 20 00 00 	cmpl   $0x0,0x20282e(%rip)        # 604508 <is_checker>
  401cda:	74 14                	je     401cf0 <seghandler+0x21>
  401cdc:	bf a5 30 40 00       	mov    $0x4030a5,%edi
  401ce1:	e8 5a ef ff ff       	callq  400c40 <puts@plt>
  401ce6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ceb:	e8 95 fc ff ff       	callq  401985 <check_fail>
  401cf0:	bf 10 32 40 00       	mov    $0x403210,%edi
  401cf5:	e8 46 ef ff ff       	callq  400c40 <puts@plt>
  401cfa:	bf 8f 30 40 00       	mov    $0x40308f,%edi
  401cff:	e8 3c ef ff ff       	callq  400c40 <puts@plt>
  401d04:	be 00 00 00 00       	mov    $0x0,%esi
  401d09:	bf 00 00 00 00       	mov    $0x0,%edi
  401d0e:	e8 f3 fc ff ff       	callq  401a06 <notify_server>
  401d13:	bf 01 00 00 00       	mov    $0x1,%edi
  401d18:	e8 83 f0 ff ff       	callq  400da0 <exit@plt>

0000000000401d1d <illegalhandler>:
  401d1d:	48 83 ec 08          	sub    $0x8,%rsp
  401d21:	83 3d e0 27 20 00 00 	cmpl   $0x0,0x2027e0(%rip)        # 604508 <is_checker>
  401d28:	74 14                	je     401d3e <illegalhandler+0x21>
  401d2a:	bf b8 30 40 00       	mov    $0x4030b8,%edi
  401d2f:	e8 0c ef ff ff       	callq  400c40 <puts@plt>
  401d34:	b8 00 00 00 00       	mov    $0x0,%eax
  401d39:	e8 47 fc ff ff       	callq  401985 <check_fail>
  401d3e:	bf 38 32 40 00       	mov    $0x403238,%edi
  401d43:	e8 f8 ee ff ff       	callq  400c40 <puts@plt>
  401d48:	bf 8f 30 40 00       	mov    $0x40308f,%edi
  401d4d:	e8 ee ee ff ff       	callq  400c40 <puts@plt>
  401d52:	be 00 00 00 00       	mov    $0x0,%esi
  401d57:	bf 00 00 00 00       	mov    $0x0,%edi
  401d5c:	e8 a5 fc ff ff       	callq  401a06 <notify_server>
  401d61:	bf 01 00 00 00       	mov    $0x1,%edi
  401d66:	e8 35 f0 ff ff       	callq  400da0 <exit@plt>

0000000000401d6b <sigalrmhandler>:
  401d6b:	48 83 ec 08          	sub    $0x8,%rsp
  401d6f:	83 3d 92 27 20 00 00 	cmpl   $0x0,0x202792(%rip)        # 604508 <is_checker>
  401d76:	74 14                	je     401d8c <sigalrmhandler+0x21>
  401d78:	bf cc 30 40 00       	mov    $0x4030cc,%edi
  401d7d:	e8 be ee ff ff       	callq  400c40 <puts@plt>
  401d82:	b8 00 00 00 00       	mov    $0x0,%eax
  401d87:	e8 f9 fb ff ff       	callq  401985 <check_fail>
  401d8c:	be 05 00 00 00       	mov    $0x5,%esi
  401d91:	bf 68 32 40 00       	mov    $0x403268,%edi
  401d96:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9b:	e8 d0 ee ff ff       	callq  400c70 <printf@plt>
  401da0:	be 00 00 00 00       	mov    $0x0,%esi
  401da5:	bf 00 00 00 00       	mov    $0x0,%edi
  401daa:	e8 57 fc ff ff       	callq  401a06 <notify_server>
  401daf:	bf 01 00 00 00       	mov    $0x1,%edi
  401db4:	e8 e7 ef ff ff       	callq  400da0 <exit@plt>

0000000000401db9 <launch>:
  401db9:	55                   	push   %rbp
  401dba:	48 89 e5             	mov    %rsp,%rbp
  401dbd:	48 89 fa             	mov    %rdi,%rdx
  401dc0:	48 8d 47 17          	lea    0x17(%rdi),%rax
  401dc4:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401dc8:	48 29 c4             	sub    %rax,%rsp
  401dcb:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401dd0:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401dd4:	be f4 00 00 00       	mov    $0xf4,%esi
  401dd9:	e8 a2 ee ff ff       	callq  400c80 <memset@plt>
  401dde:	48 8b 05 bb 26 20 00 	mov    0x2026bb(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401de5:	48 39 05 04 27 20 00 	cmp    %rax,0x202704(%rip)        # 6044f0 <infile>
  401dec:	74 29                	je     401e17 <launch+0x5e>
  401dee:	c7 05 04 27 20 00 00 	movl   $0x0,0x202704(%rip)        # 6044fc <vlevel>
  401df5:	00 00 00 
  401df8:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfd:	e8 f5 fa ff ff       	callq  4018f7 <test>
  401e02:	83 3d ff 26 20 00 00 	cmpl   $0x0,0x2026ff(%rip)        # 604508 <is_checker>
  401e09:	75 1d                	jne    401e28 <launch+0x6f>
  401e0b:	bf ec 30 40 00       	mov    $0x4030ec,%edi
  401e10:	e8 2b ee ff ff       	callq  400c40 <puts@plt>
  401e15:	c9                   	leaveq 
  401e16:	c3                   	retq   
  401e17:	bf d4 30 40 00       	mov    $0x4030d4,%edi
  401e1c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e21:	e8 4a ee ff ff       	callq  400c70 <printf@plt>
  401e26:	eb c6                	jmp    401dee <launch+0x35>
  401e28:	bf e1 30 40 00       	mov    $0x4030e1,%edi
  401e2d:	e8 0e ee ff ff       	callq  400c40 <puts@plt>
  401e32:	b8 00 00 00 00       	mov    $0x0,%eax
  401e37:	e8 49 fb ff ff       	callq  401985 <check_fail>

0000000000401e3c <stable_launch>:
  401e3c:	53                   	push   %rbx
  401e3d:	48 89 3d a4 26 20 00 	mov    %rdi,0x2026a4(%rip)        # 6044e8 <global_offset>
  401e44:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401e4a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e50:	b9 32 00 00 00       	mov    $0x32,%ecx
  401e55:	ba 07 00 00 00       	mov    $0x7,%edx
  401e5a:	be 00 00 10 00       	mov    $0x100000,%esi
  401e5f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401e64:	e8 f7 ed ff ff       	callq  400c60 <mmap@plt>
  401e69:	48 89 c3             	mov    %rax,%rbx
  401e6c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401e72:	75 43                	jne    401eb7 <stable_launch+0x7b>
  401e74:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401e7b:	48 89 15 ae 32 20 00 	mov    %rdx,0x2032ae(%rip)        # 605130 <stack_top>
  401e82:	48 89 e0             	mov    %rsp,%rax
  401e85:	48 89 d4             	mov    %rdx,%rsp
  401e88:	48 89 c2             	mov    %rax,%rdx
  401e8b:	48 89 15 4e 26 20 00 	mov    %rdx,0x20264e(%rip)        # 6044e0 <global_save_stack>
  401e92:	48 8b 3d 4f 26 20 00 	mov    0x20264f(%rip),%rdi        # 6044e8 <global_offset>
  401e99:	e8 1b ff ff ff       	callq  401db9 <launch>
  401e9e:	48 8b 05 3b 26 20 00 	mov    0x20263b(%rip),%rax        # 6044e0 <global_save_stack>
  401ea5:	48 89 c4             	mov    %rax,%rsp
  401ea8:	be 00 00 10 00       	mov    $0x100000,%esi
  401ead:	48 89 df             	mov    %rbx,%rdi
  401eb0:	e8 8b ee ff ff       	callq  400d40 <munmap@plt>
  401eb5:	5b                   	pop    %rbx
  401eb6:	c3                   	retq   
  401eb7:	be 00 00 10 00       	mov    $0x100000,%esi
  401ebc:	48 89 c7             	mov    %rax,%rdi
  401ebf:	e8 7c ee ff ff       	callq  400d40 <munmap@plt>
  401ec4:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401ec9:	be a0 32 40 00       	mov    $0x4032a0,%esi
  401ece:	48 8b 3d eb 25 20 00 	mov    0x2025eb(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401ed5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eda:	e8 01 ee ff ff       	callq  400ce0 <fprintf@plt>
  401edf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee4:	e8 b7 ee ff ff       	callq  400da0 <exit@plt>

0000000000401ee9 <rio_readinitb>:
  401ee9:	89 37                	mov    %esi,(%rdi)
  401eeb:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401ef2:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401ef6:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401efa:	c3                   	retq   

0000000000401efb <sigalrm_handler>:
  401efb:	48 83 ec 08          	sub    $0x8,%rsp
  401eff:	ba 00 00 00 00       	mov    $0x0,%edx
  401f04:	be e0 32 40 00       	mov    $0x4032e0,%esi
  401f09:	48 8b 3d b0 25 20 00 	mov    0x2025b0(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401f10:	b8 00 00 00 00       	mov    $0x0,%eax
  401f15:	e8 c6 ed ff ff       	callq  400ce0 <fprintf@plt>
  401f1a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f1f:	e8 7c ee ff ff       	callq  400da0 <exit@plt>

0000000000401f24 <urlencode>:
  401f24:	41 54                	push   %r12
  401f26:	55                   	push   %rbp
  401f27:	53                   	push   %rbx
  401f28:	48 83 ec 10          	sub    $0x10,%rsp
  401f2c:	48 89 fb             	mov    %rdi,%rbx
  401f2f:	48 89 f5             	mov    %rsi,%rbp
  401f32:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401f39:	b8 00 00 00 00       	mov    $0x0,%eax
  401f3e:	f2 ae                	repnz scas %es:(%rdi),%al
  401f40:	48 89 ce             	mov    %rcx,%rsi
  401f43:	48 f7 d6             	not    %rsi
  401f46:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401f49:	eb 0e                	jmp    401f59 <urlencode+0x35>
  401f4b:	88 55 00             	mov    %dl,0x0(%rbp)
  401f4e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401f52:	48 83 c3 01          	add    $0x1,%rbx
  401f56:	44 89 e0             	mov    %r12d,%eax
  401f59:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401f5d:	85 c0                	test   %eax,%eax
  401f5f:	0f 84 93 00 00 00    	je     401ff8 <urlencode+0xd4>
  401f65:	0f b6 13             	movzbl (%rbx),%edx
  401f68:	80 fa 2a             	cmp    $0x2a,%dl
  401f6b:	0f 94 c1             	sete   %cl
  401f6e:	80 fa 2d             	cmp    $0x2d,%dl
  401f71:	0f 94 c0             	sete   %al
  401f74:	08 c1                	or     %al,%cl
  401f76:	75 d3                	jne    401f4b <urlencode+0x27>
  401f78:	80 fa 2e             	cmp    $0x2e,%dl
  401f7b:	74 ce                	je     401f4b <urlencode+0x27>
  401f7d:	80 fa 5f             	cmp    $0x5f,%dl
  401f80:	74 c9                	je     401f4b <urlencode+0x27>
  401f82:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401f85:	3c 09                	cmp    $0x9,%al
  401f87:	76 c2                	jbe    401f4b <urlencode+0x27>
  401f89:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401f8c:	3c 19                	cmp    $0x19,%al
  401f8e:	76 bb                	jbe    401f4b <urlencode+0x27>
  401f90:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401f93:	3c 19                	cmp    $0x19,%al
  401f95:	76 b4                	jbe    401f4b <urlencode+0x27>
  401f97:	80 fa 20             	cmp    $0x20,%dl
  401f9a:	74 4a                	je     401fe6 <urlencode+0xc2>
  401f9c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401f9f:	3c 5f                	cmp    $0x5f,%al
  401fa1:	0f 96 c1             	setbe  %cl
  401fa4:	80 fa 09             	cmp    $0x9,%dl
  401fa7:	0f 94 c0             	sete   %al
  401faa:	08 c1                	or     %al,%cl
  401fac:	74 45                	je     401ff3 <urlencode+0xcf>
  401fae:	0f b6 d2             	movzbl %dl,%edx
  401fb1:	be 78 33 40 00       	mov    $0x403378,%esi
  401fb6:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  401fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc0:	e8 cb ed ff ff       	callq  400d90 <sprintf@plt>
  401fc5:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  401fca:	88 45 00             	mov    %al,0x0(%rbp)
  401fcd:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  401fd2:	88 45 01             	mov    %al,0x1(%rbp)
  401fd5:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  401fda:	88 45 02             	mov    %al,0x2(%rbp)
  401fdd:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401fe1:	e9 6c ff ff ff       	jmpq   401f52 <urlencode+0x2e>
  401fe6:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401fea:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401fee:	e9 5f ff ff ff       	jmpq   401f52 <urlencode+0x2e>
  401ff3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ff8:	48 83 c4 10          	add    $0x10,%rsp
  401ffc:	5b                   	pop    %rbx
  401ffd:	5d                   	pop    %rbp
  401ffe:	41 5c                	pop    %r12
  402000:	c3                   	retq   

0000000000402001 <rio_writen>:
  402001:	41 55                	push   %r13
  402003:	41 54                	push   %r12
  402005:	55                   	push   %rbp
  402006:	53                   	push   %rbx
  402007:	48 83 ec 08          	sub    $0x8,%rsp
  40200b:	41 89 fc             	mov    %edi,%r12d
  40200e:	48 89 f5             	mov    %rsi,%rbp
  402011:	49 89 d5             	mov    %rdx,%r13
  402014:	48 89 d3             	mov    %rdx,%rbx
  402017:	eb 06                	jmp    40201f <rio_writen+0x1e>
  402019:	48 29 c3             	sub    %rax,%rbx
  40201c:	48 01 c5             	add    %rax,%rbp
  40201f:	48 85 db             	test   %rbx,%rbx
  402022:	74 24                	je     402048 <rio_writen+0x47>
  402024:	48 89 da             	mov    %rbx,%rdx
  402027:	48 89 ee             	mov    %rbp,%rsi
  40202a:	44 89 e7             	mov    %r12d,%edi
  40202d:	e8 1e ec ff ff       	callq  400c50 <write@plt>
  402032:	48 85 c0             	test   %rax,%rax
  402035:	7f e2                	jg     402019 <rio_writen+0x18>
  402037:	e8 c4 eb ff ff       	callq  400c00 <__errno_location@plt>
  40203c:	83 38 04             	cmpl   $0x4,(%rax)
  40203f:	75 15                	jne    402056 <rio_writen+0x55>
  402041:	b8 00 00 00 00       	mov    $0x0,%eax
  402046:	eb d1                	jmp    402019 <rio_writen+0x18>
  402048:	4c 89 e8             	mov    %r13,%rax
  40204b:	48 83 c4 08          	add    $0x8,%rsp
  40204f:	5b                   	pop    %rbx
  402050:	5d                   	pop    %rbp
  402051:	41 5c                	pop    %r12
  402053:	41 5d                	pop    %r13
  402055:	c3                   	retq   
  402056:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40205d:	eb ec                	jmp    40204b <rio_writen+0x4a>

000000000040205f <rio_read>:
  40205f:	41 55                	push   %r13
  402061:	41 54                	push   %r12
  402063:	55                   	push   %rbp
  402064:	53                   	push   %rbx
  402065:	48 83 ec 08          	sub    $0x8,%rsp
  402069:	48 89 fb             	mov    %rdi,%rbx
  40206c:	49 89 f5             	mov    %rsi,%r13
  40206f:	49 89 d4             	mov    %rdx,%r12
  402072:	eb 0a                	jmp    40207e <rio_read+0x1f>
  402074:	e8 87 eb ff ff       	callq  400c00 <__errno_location@plt>
  402079:	83 38 04             	cmpl   $0x4,(%rax)
  40207c:	75 5a                	jne    4020d8 <rio_read+0x79>
  40207e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402081:	85 ed                	test   %ebp,%ebp
  402083:	7f 22                	jg     4020a7 <rio_read+0x48>
  402085:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402089:	ba 00 20 00 00       	mov    $0x2000,%edx
  40208e:	48 89 ee             	mov    %rbp,%rsi
  402091:	8b 3b                	mov    (%rbx),%edi
  402093:	e8 18 ec ff ff       	callq  400cb0 <read@plt>
  402098:	89 43 04             	mov    %eax,0x4(%rbx)
  40209b:	85 c0                	test   %eax,%eax
  40209d:	78 d5                	js     402074 <rio_read+0x15>
  40209f:	74 40                	je     4020e1 <rio_read+0x82>
  4020a1:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4020a5:	eb d7                	jmp    40207e <rio_read+0x1f>
  4020a7:	89 e8                	mov    %ebp,%eax
  4020a9:	4c 39 e0             	cmp    %r12,%rax
  4020ac:	72 03                	jb     4020b1 <rio_read+0x52>
  4020ae:	44 89 e5             	mov    %r12d,%ebp
  4020b1:	4c 63 e5             	movslq %ebp,%r12
  4020b4:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4020b8:	4c 89 e2             	mov    %r12,%rdx
  4020bb:	4c 89 ef             	mov    %r13,%rdi
  4020be:	e8 3d ec ff ff       	callq  400d00 <memcpy@plt>
  4020c3:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4020c7:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4020ca:	4c 89 e0             	mov    %r12,%rax
  4020cd:	48 83 c4 08          	add    $0x8,%rsp
  4020d1:	5b                   	pop    %rbx
  4020d2:	5d                   	pop    %rbp
  4020d3:	41 5c                	pop    %r12
  4020d5:	41 5d                	pop    %r13
  4020d7:	c3                   	retq   
  4020d8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4020df:	eb ec                	jmp    4020cd <rio_read+0x6e>
  4020e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e6:	eb e5                	jmp    4020cd <rio_read+0x6e>

00000000004020e8 <rio_readlineb>:
  4020e8:	41 55                	push   %r13
  4020ea:	41 54                	push   %r12
  4020ec:	55                   	push   %rbp
  4020ed:	53                   	push   %rbx
  4020ee:	48 83 ec 18          	sub    $0x18,%rsp
  4020f2:	49 89 fd             	mov    %rdi,%r13
  4020f5:	48 89 f5             	mov    %rsi,%rbp
  4020f8:	49 89 d4             	mov    %rdx,%r12
  4020fb:	bb 01 00 00 00       	mov    $0x1,%ebx
  402100:	4c 39 e3             	cmp    %r12,%rbx
  402103:	73 44                	jae    402149 <rio_readlineb+0x61>
  402105:	ba 01 00 00 00       	mov    $0x1,%edx
  40210a:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40210f:	4c 89 ef             	mov    %r13,%rdi
  402112:	e8 48 ff ff ff       	callq  40205f <rio_read>
  402117:	83 f8 01             	cmp    $0x1,%eax
  40211a:	75 19                	jne    402135 <rio_readlineb+0x4d>
  40211c:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402120:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  402125:	88 45 00             	mov    %al,0x0(%rbp)
  402128:	3c 0a                	cmp    $0xa,%al
  40212a:	74 1a                	je     402146 <rio_readlineb+0x5e>
  40212c:	48 83 c3 01          	add    $0x1,%rbx
  402130:	48 89 d5             	mov    %rdx,%rbp
  402133:	eb cb                	jmp    402100 <rio_readlineb+0x18>
  402135:	85 c0                	test   %eax,%eax
  402137:	75 22                	jne    40215b <rio_readlineb+0x73>
  402139:	48 83 fb 01          	cmp    $0x1,%rbx
  40213d:	75 0a                	jne    402149 <rio_readlineb+0x61>
  40213f:	b8 00 00 00 00       	mov    $0x0,%eax
  402144:	eb 0a                	jmp    402150 <rio_readlineb+0x68>
  402146:	48 89 d5             	mov    %rdx,%rbp
  402149:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40214d:	48 89 d8             	mov    %rbx,%rax
  402150:	48 83 c4 18          	add    $0x18,%rsp
  402154:	5b                   	pop    %rbx
  402155:	5d                   	pop    %rbp
  402156:	41 5c                	pop    %r12
  402158:	41 5d                	pop    %r13
  40215a:	c3                   	retq   
  40215b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402162:	eb ec                	jmp    402150 <rio_readlineb+0x68>

0000000000402164 <submitr>:
  402164:	41 57                	push   %r15
  402166:	41 56                	push   %r14
  402168:	41 55                	push   %r13
  40216a:	41 54                	push   %r12
  40216c:	55                   	push   %rbp
  40216d:	53                   	push   %rbx
  40216e:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  402175:	49 89 fc             	mov    %rdi,%r12
  402178:	89 74 24 04          	mov    %esi,0x4(%rsp)
  40217c:	49 89 d7             	mov    %rdx,%r15
  40217f:	49 89 ce             	mov    %rcx,%r14
  402182:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  402187:	4d 89 cd             	mov    %r9,%r13
  40218a:	48 8b ac 24 80 a0 00 	mov    0xa080(%rsp),%rbp
  402191:	00 
  402192:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  402199:	00 00 00 00 
  40219d:	ba 00 00 00 00       	mov    $0x0,%edx
  4021a2:	be 01 00 00 00       	mov    $0x1,%esi
  4021a7:	bf 02 00 00 00       	mov    $0x2,%edi
  4021ac:	e8 1f ec ff ff       	callq  400dd0 <socket@plt>
  4021b1:	85 c0                	test   %eax,%eax
  4021b3:	0f 88 8f 02 00 00    	js     402448 <submitr+0x2e4>
  4021b9:	89 c3                	mov    %eax,%ebx
  4021bb:	4c 89 e7             	mov    %r12,%rdi
  4021be:	e8 0d eb ff ff       	callq  400cd0 <gethostbyname@plt>
  4021c3:	48 85 c0             	test   %rax,%rax
  4021c6:	0f 84 c8 02 00 00    	je     402494 <submitr+0x330>
  4021cc:	48 c7 84 24 32 a0 00 	movq   $0x0,0xa032(%rsp)
  4021d3:	00 00 00 00 00 
  4021d8:	c7 84 24 3a a0 00 00 	movl   $0x0,0xa03a(%rsp)
  4021df:	00 00 00 00 
  4021e3:	66 c7 84 24 3e a0 00 	movw   $0x0,0xa03e(%rsp)
  4021ea:	00 00 00 
  4021ed:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  4021f4:	00 02 00 
  4021f7:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4021fb:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4021ff:	48 8d bc 24 34 a0 00 	lea    0xa034(%rsp),%rdi
  402206:	00 
  402207:	48 8b 31             	mov    (%rcx),%rsi
  40220a:	e8 41 eb ff ff       	callq  400d50 <memmove@plt>
  40220f:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  402214:	66 c1 c0 08          	rol    $0x8,%ax
  402218:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  40221f:	00 
  402220:	ba 10 00 00 00       	mov    $0x10,%edx
  402225:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  40222c:	00 
  40222d:	89 df                	mov    %ebx,%edi
  40222f:	e8 7c eb ff ff       	callq  400db0 <connect@plt>
  402234:	85 c0                	test   %eax,%eax
  402236:	0f 88 c0 02 00 00    	js     4024fc <submitr+0x398>
  40223c:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402243:	b8 00 00 00 00       	mov    $0x0,%eax
  402248:	48 89 f1             	mov    %rsi,%rcx
  40224b:	4c 89 ef             	mov    %r13,%rdi
  40224e:	f2 ae                	repnz scas %es:(%rdi),%al
  402250:	48 89 ca             	mov    %rcx,%rdx
  402253:	48 f7 d2             	not    %rdx
  402256:	48 89 f1             	mov    %rsi,%rcx
  402259:	4c 89 ff             	mov    %r15,%rdi
  40225c:	f2 ae                	repnz scas %es:(%rdi),%al
  40225e:	48 f7 d1             	not    %rcx
  402261:	49 89 c8             	mov    %rcx,%r8
  402264:	48 89 f1             	mov    %rsi,%rcx
  402267:	4c 89 f7             	mov    %r14,%rdi
  40226a:	f2 ae                	repnz scas %es:(%rdi),%al
  40226c:	48 f7 d1             	not    %rcx
  40226f:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402274:	48 89 f1             	mov    %rsi,%rcx
  402277:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40227c:	f2 ae                	repnz scas %es:(%rdi),%al
  40227e:	48 89 c8             	mov    %rcx,%rax
  402281:	48 f7 d0             	not    %rax
  402284:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402289:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40228e:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402295:	00 
  402296:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40229c:	0f 87 b4 02 00 00    	ja     402556 <submitr+0x3f2>
  4022a2:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  4022a9:	00 
  4022aa:	b9 00 04 00 00       	mov    $0x400,%ecx
  4022af:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b4:	48 89 f7             	mov    %rsi,%rdi
  4022b7:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4022ba:	4c 89 ef             	mov    %r13,%rdi
  4022bd:	e8 62 fc ff ff       	callq  401f24 <urlencode>
  4022c2:	85 c0                	test   %eax,%eax
  4022c4:	0f 88 ff 02 00 00    	js     4025c9 <submitr+0x465>
  4022ca:	4c 8d ac 24 20 60 00 	lea    0x6020(%rsp),%r13
  4022d1:	00 
  4022d2:	4d 89 e1             	mov    %r12,%r9
  4022d5:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  4022dc:	00 
  4022dd:	4c 89 f9             	mov    %r15,%rcx
  4022e0:	4c 89 f2             	mov    %r14,%rdx
  4022e3:	be 08 33 40 00       	mov    $0x403308,%esi
  4022e8:	4c 89 ef             	mov    %r13,%rdi
  4022eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4022f0:	e8 9b ea ff ff       	callq  400d90 <sprintf@plt>
  4022f5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402301:	4c 89 ef             	mov    %r13,%rdi
  402304:	f2 ae                	repnz scas %es:(%rdi),%al
  402306:	48 89 ca             	mov    %rcx,%rdx
  402309:	48 f7 d2             	not    %rdx
  40230c:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402310:	4c 89 ee             	mov    %r13,%rsi
  402313:	89 df                	mov    %ebx,%edi
  402315:	e8 e7 fc ff ff       	callq  402001 <rio_writen>
  40231a:	48 85 c0             	test   %rax,%rax
  40231d:	0f 88 31 03 00 00    	js     402654 <submitr+0x4f0>
  402323:	89 de                	mov    %ebx,%esi
  402325:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  40232c:	00 
  40232d:	e8 b7 fb ff ff       	callq  401ee9 <rio_readinitb>
  402332:	ba 00 20 00 00       	mov    $0x2000,%edx
  402337:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40233e:	00 
  40233f:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402346:	00 
  402347:	e8 9c fd ff ff       	callq  4020e8 <rio_readlineb>
  40234c:	48 85 c0             	test   %rax,%rax
  40234f:	0f 8e 6e 03 00 00    	jle    4026c3 <submitr+0x55f>
  402355:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  40235a:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  402361:	00 
  402362:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  402369:	00 
  40236a:	be 7f 33 40 00       	mov    $0x40337f,%esi
  40236f:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  402376:	00 
  402377:	b8 00 00 00 00       	mov    $0x0,%eax
  40237c:	e8 af e9 ff ff       	callq  400d30 <__isoc99_sscanf@plt>
  402381:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402388:	00 
  402389:	bf 96 33 40 00       	mov    $0x403396,%edi
  40238e:	b9 03 00 00 00       	mov    $0x3,%ecx
  402393:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402395:	0f 97 c0             	seta   %al
  402398:	1c 00                	sbb    $0x0,%al
  40239a:	84 c0                	test   %al,%al
  40239c:	0f 84 9f 03 00 00    	je     402741 <submitr+0x5dd>
  4023a2:	ba 00 20 00 00       	mov    $0x2000,%edx
  4023a7:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4023ae:	00 
  4023af:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4023b6:	00 
  4023b7:	e8 2c fd ff ff       	callq  4020e8 <rio_readlineb>
  4023bc:	48 85 c0             	test   %rax,%rax
  4023bf:	7f c0                	jg     402381 <submitr+0x21d>
  4023c1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4023c8:	3a 20 43 
  4023cb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4023d2:	20 75 6e 
  4023d5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4023d9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4023dd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4023e4:	74 6f 20 
  4023e7:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4023ee:	68 65 61 
  4023f1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4023f5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4023f9:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402400:	66 72 6f 
  402403:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  40240a:	20 72 65 
  40240d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402411:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402415:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40241c:	73 65 72 
  40241f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402423:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  40242a:	89 df                	mov    %ebx,%edi
  40242c:	e8 6f e8 ff ff       	callq  400ca0 <close@plt>
  402431:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402436:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  40243d:	5b                   	pop    %rbx
  40243e:	5d                   	pop    %rbp
  40243f:	41 5c                	pop    %r12
  402441:	41 5d                	pop    %r13
  402443:	41 5e                	pop    %r14
  402445:	41 5f                	pop    %r15
  402447:	c3                   	retq   
  402448:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40244f:	3a 20 43 
  402452:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402459:	20 75 6e 
  40245c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402460:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402464:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40246b:	74 6f 20 
  40246e:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402475:	65 20 73 
  402478:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40247c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402480:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402487:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40248d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402492:	eb a2                	jmp    402436 <submitr+0x2d2>
  402494:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40249b:	3a 20 44 
  40249e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4024a5:	20 75 6e 
  4024a8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4024ac:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4024b0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024b7:	74 6f 20 
  4024ba:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4024c1:	76 65 20 
  4024c4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4024c8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4024cc:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4024d3:	72 20 61 
  4024d6:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4024da:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4024e1:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4024e7:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4024eb:	89 df                	mov    %ebx,%edi
  4024ed:	e8 ae e7 ff ff       	callq  400ca0 <close@plt>
  4024f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024f7:	e9 3a ff ff ff       	jmpq   402436 <submitr+0x2d2>
  4024fc:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402503:	3a 20 55 
  402506:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40250d:	20 74 6f 
  402510:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402514:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402518:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40251f:	65 63 74 
  402522:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402529:	68 65 20 
  40252c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402530:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402534:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  40253b:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  402541:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402545:	89 df                	mov    %ebx,%edi
  402547:	e8 54 e7 ff ff       	callq  400ca0 <close@plt>
  40254c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402551:	e9 e0 fe ff ff       	jmpq   402436 <submitr+0x2d2>
  402556:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40255d:	3a 20 52 
  402560:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402567:	20 73 74 
  40256a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40256e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402572:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402579:	74 6f 6f 
  40257c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402583:	65 2e 20 
  402586:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40258a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40258e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402595:	61 73 65 
  402598:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  40259f:	49 54 52 
  4025a2:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4025a6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4025aa:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4025b1:	55 46 00 
  4025b4:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4025b8:	89 df                	mov    %ebx,%edi
  4025ba:	e8 e1 e6 ff ff       	callq  400ca0 <close@plt>
  4025bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025c4:	e9 6d fe ff ff       	jmpq   402436 <submitr+0x2d2>
  4025c9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4025d0:	3a 20 52 
  4025d3:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4025da:	20 73 74 
  4025dd:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4025e1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4025e5:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4025ec:	63 6f 6e 
  4025ef:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4025f6:	20 61 6e 
  4025f9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4025fd:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402601:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402608:	67 61 6c 
  40260b:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402612:	6e 70 72 
  402615:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402619:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40261d:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402624:	6c 65 20 
  402627:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40262e:	63 74 65 
  402631:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402635:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402639:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40263f:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402643:	89 df                	mov    %ebx,%edi
  402645:	e8 56 e6 ff ff       	callq  400ca0 <close@plt>
  40264a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40264f:	e9 e2 fd ff ff       	jmpq   402436 <submitr+0x2d2>
  402654:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40265b:	3a 20 43 
  40265e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402665:	20 75 6e 
  402668:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40266c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402670:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402677:	74 6f 20 
  40267a:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402681:	20 74 6f 
  402684:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402688:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40268c:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402693:	72 65 73 
  402696:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  40269d:	65 72 76 
  4026a0:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4026a4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4026a8:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  4026ae:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  4026b2:	89 df                	mov    %ebx,%edi
  4026b4:	e8 e7 e5 ff ff       	callq  400ca0 <close@plt>
  4026b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026be:	e9 73 fd ff ff       	jmpq   402436 <submitr+0x2d2>
  4026c3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026ca:	3a 20 43 
  4026cd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4026d4:	20 75 6e 
  4026d7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4026db:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4026df:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026e6:	74 6f 20 
  4026e9:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4026f0:	66 69 72 
  4026f3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4026f7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4026fb:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402702:	61 64 65 
  402705:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  40270c:	6d 20 72 
  40270f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402713:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402717:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40271e:	20 73 65 
  402721:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402725:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  40272c:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402730:	89 df                	mov    %ebx,%edi
  402732:	e8 69 e5 ff ff       	callq  400ca0 <close@plt>
  402737:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40273c:	e9 f5 fc ff ff       	jmpq   402436 <submitr+0x2d2>
  402741:	ba 00 20 00 00       	mov    $0x2000,%edx
  402746:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40274d:	00 
  40274e:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402755:	00 
  402756:	e8 8d f9 ff ff       	callq  4020e8 <rio_readlineb>
  40275b:	48 85 c0             	test   %rax,%rax
  40275e:	0f 8e 91 00 00 00    	jle    4027f5 <submitr+0x691>
  402764:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  40276b:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402771:	0f 85 02 01 00 00    	jne    402879 <submitr+0x715>
  402777:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40277e:	00 
  40277f:	48 89 ef             	mov    %rbp,%rdi
  402782:	e8 a9 e4 ff ff       	callq  400c30 <strcpy@plt>
  402787:	89 df                	mov    %ebx,%edi
  402789:	e8 12 e5 ff ff       	callq  400ca0 <close@plt>
  40278e:	bf 90 33 40 00       	mov    $0x403390,%edi
  402793:	b9 04 00 00 00       	mov    $0x4,%ecx
  402798:	48 89 ee             	mov    %rbp,%rsi
  40279b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40279d:	0f 97 c0             	seta   %al
  4027a0:	1c 00                	sbb    $0x0,%al
  4027a2:	0f be c0             	movsbl %al,%eax
  4027a5:	85 c0                	test   %eax,%eax
  4027a7:	0f 84 89 fc ff ff    	je     402436 <submitr+0x2d2>
  4027ad:	bf 94 33 40 00       	mov    $0x403394,%edi
  4027b2:	b9 05 00 00 00       	mov    $0x5,%ecx
  4027b7:	48 89 ee             	mov    %rbp,%rsi
  4027ba:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4027bc:	0f 97 c0             	seta   %al
  4027bf:	1c 00                	sbb    $0x0,%al
  4027c1:	0f be c0             	movsbl %al,%eax
  4027c4:	85 c0                	test   %eax,%eax
  4027c6:	0f 84 6a fc ff ff    	je     402436 <submitr+0x2d2>
  4027cc:	bf 99 33 40 00       	mov    $0x403399,%edi
  4027d1:	b9 03 00 00 00       	mov    $0x3,%ecx
  4027d6:	48 89 ee             	mov    %rbp,%rsi
  4027d9:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4027db:	0f 97 c0             	seta   %al
  4027de:	1c 00                	sbb    $0x0,%al
  4027e0:	0f be c0             	movsbl %al,%eax
  4027e3:	85 c0                	test   %eax,%eax
  4027e5:	0f 84 4b fc ff ff    	je     402436 <submitr+0x2d2>
  4027eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027f0:	e9 41 fc ff ff       	jmpq   402436 <submitr+0x2d2>
  4027f5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027fc:	3a 20 43 
  4027ff:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402806:	20 75 6e 
  402809:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40280d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402811:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402818:	74 6f 20 
  40281b:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402822:	73 74 61 
  402825:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402829:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40282d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402834:	65 73 73 
  402837:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40283e:	72 6f 6d 
  402841:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402845:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402849:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402850:	6c 74 20 
  402853:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402857:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  40285e:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402864:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402868:	89 df                	mov    %ebx,%edi
  40286a:	e8 31 e4 ff ff       	callq  400ca0 <close@plt>
  40286f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402874:	e9 bd fb ff ff       	jmpq   402436 <submitr+0x2d2>
  402879:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  40287e:	be 48 33 40 00       	mov    $0x403348,%esi
  402883:	48 89 ef             	mov    %rbp,%rdi
  402886:	b8 00 00 00 00       	mov    $0x0,%eax
  40288b:	e8 00 e5 ff ff       	callq  400d90 <sprintf@plt>
  402890:	89 df                	mov    %ebx,%edi
  402892:	e8 09 e4 ff ff       	callq  400ca0 <close@plt>
  402897:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40289c:	e9 95 fb ff ff       	jmpq   402436 <submitr+0x2d2>

00000000004028a1 <init_timeout>:
  4028a1:	85 ff                	test   %edi,%edi
  4028a3:	74 24                	je     4028c9 <init_timeout+0x28>
  4028a5:	53                   	push   %rbx
  4028a6:	89 fb                	mov    %edi,%ebx
  4028a8:	78 18                	js     4028c2 <init_timeout+0x21>
  4028aa:	be fb 1e 40 00       	mov    $0x401efb,%esi
  4028af:	bf 0e 00 00 00       	mov    $0xe,%edi
  4028b4:	e8 07 e4 ff ff       	callq  400cc0 <signal@plt>
  4028b9:	89 df                	mov    %ebx,%edi
  4028bb:	e8 d0 e3 ff ff       	callq  400c90 <alarm@plt>
  4028c0:	5b                   	pop    %rbx
  4028c1:	c3                   	retq   
  4028c2:	bb 00 00 00 00       	mov    $0x0,%ebx
  4028c7:	eb e1                	jmp    4028aa <init_timeout+0x9>
  4028c9:	c3                   	retq   

00000000004028ca <init_driver>:
  4028ca:	55                   	push   %rbp
  4028cb:	53                   	push   %rbx
  4028cc:	48 83 ec 18          	sub    $0x18,%rsp
  4028d0:	48 89 fd             	mov    %rdi,%rbp
  4028d3:	be 01 00 00 00       	mov    $0x1,%esi
  4028d8:	bf 0d 00 00 00       	mov    $0xd,%edi
  4028dd:	e8 de e3 ff ff       	callq  400cc0 <signal@plt>
  4028e2:	be 01 00 00 00       	mov    $0x1,%esi
  4028e7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4028ec:	e8 cf e3 ff ff       	callq  400cc0 <signal@plt>
  4028f1:	be 01 00 00 00       	mov    $0x1,%esi
  4028f6:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4028fb:	e8 c0 e3 ff ff       	callq  400cc0 <signal@plt>
  402900:	ba 00 00 00 00       	mov    $0x0,%edx
  402905:	be 01 00 00 00       	mov    $0x1,%esi
  40290a:	bf 02 00 00 00       	mov    $0x2,%edi
  40290f:	e8 bc e4 ff ff       	callq  400dd0 <socket@plt>
  402914:	85 c0                	test   %eax,%eax
  402916:	0f 88 83 00 00 00    	js     40299f <init_driver+0xd5>
  40291c:	89 c3                	mov    %eax,%ebx
  40291e:	bf ca 2e 40 00       	mov    $0x402eca,%edi
  402923:	e8 a8 e3 ff ff       	callq  400cd0 <gethostbyname@plt>
  402928:	48 85 c0             	test   %rax,%rax
  40292b:	0f 84 ba 00 00 00    	je     4029eb <init_driver+0x121>
  402931:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402938:	00 00 
  40293a:	c7 44 24 0a 00 00 00 	movl   $0x0,0xa(%rsp)
  402941:	00 
  402942:	66 c7 44 24 0e 00 00 	movw   $0x0,0xe(%rsp)
  402949:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40294f:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402953:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402957:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40295c:	48 8b 31             	mov    (%rcx),%rsi
  40295f:	e8 ec e3 ff ff       	callq  400d50 <memmove@plt>
  402964:	66 c7 44 24 02 07 4b 	movw   $0x4b07,0x2(%rsp)
  40296b:	ba 10 00 00 00       	mov    $0x10,%edx
  402970:	48 89 e6             	mov    %rsp,%rsi
  402973:	89 df                	mov    %ebx,%edi
  402975:	e8 36 e4 ff ff       	callq  400db0 <connect@plt>
  40297a:	85 c0                	test   %eax,%eax
  40297c:	0f 88 d1 00 00 00    	js     402a53 <init_driver+0x189>
  402982:	89 df                	mov    %ebx,%edi
  402984:	e8 17 e3 ff ff       	callq  400ca0 <close@plt>
  402989:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40298f:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402993:	b8 00 00 00 00       	mov    $0x0,%eax
  402998:	48 83 c4 18          	add    $0x18,%rsp
  40299c:	5b                   	pop    %rbx
  40299d:	5d                   	pop    %rbp
  40299e:	c3                   	retq   
  40299f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029a6:	3a 20 43 
  4029a9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4029b0:	20 75 6e 
  4029b3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029b7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029bb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029c2:	74 6f 20 
  4029c5:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4029cc:	65 20 73 
  4029cf:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029d3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029d7:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4029de:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4029e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029e9:	eb ad                	jmp    402998 <init_driver+0xce>
  4029eb:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4029f2:	3a 20 44 
  4029f5:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4029fc:	20 75 6e 
  4029ff:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a03:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a07:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a0e:	74 6f 20 
  402a11:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402a18:	76 65 20 
  402a1b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a1f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a23:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402a2a:	72 20 61 
  402a2d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a31:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402a38:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402a3e:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402a42:	89 df                	mov    %ebx,%edi
  402a44:	e8 57 e2 ff ff       	callq  400ca0 <close@plt>
  402a49:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a4e:	e9 45 ff ff ff       	jmpq   402998 <init_driver+0xce>
  402a53:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402a5a:	3a 20 55 
  402a5d:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402a64:	20 74 6f 
  402a67:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a6b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a6f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402a76:	65 63 74 
  402a79:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402a80:	65 72 76 
  402a83:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a87:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a8b:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402a91:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402a95:	89 df                	mov    %ebx,%edi
  402a97:	e8 04 e2 ff ff       	callq  400ca0 <close@plt>
  402a9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aa1:	e9 f2 fe ff ff       	jmpq   402998 <init_driver+0xce>

0000000000402aa6 <driver_post>:
  402aa6:	53                   	push   %rbx
  402aa7:	4c 89 cb             	mov    %r9,%rbx
  402aaa:	45 85 c0             	test   %r8d,%r8d
  402aad:	75 18                	jne    402ac7 <driver_post+0x21>
  402aaf:	48 85 ff             	test   %rdi,%rdi
  402ab2:	74 05                	je     402ab9 <driver_post+0x13>
  402ab4:	80 3f 00             	cmpb   $0x0,(%rdi)
  402ab7:	75 30                	jne    402ae9 <driver_post+0x43>
  402ab9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402abe:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ac2:	44 89 c0             	mov    %r8d,%eax
  402ac5:	5b                   	pop    %rbx
  402ac6:	c3                   	retq   
  402ac7:	48 89 ce             	mov    %rcx,%rsi
  402aca:	bf 9c 33 40 00       	mov    $0x40339c,%edi
  402acf:	b8 00 00 00 00       	mov    $0x0,%eax
  402ad4:	e8 97 e1 ff ff       	callq  400c70 <printf@plt>
  402ad9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ade:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ae2:	b8 00 00 00 00       	mov    $0x0,%eax
  402ae7:	eb dc                	jmp    402ac5 <driver_post+0x1f>
  402ae9:	48 83 ec 08          	sub    $0x8,%rsp
  402aed:	41 51                	push   %r9
  402aef:	49 89 c9             	mov    %rcx,%r9
  402af2:	49 89 d0             	mov    %rdx,%r8
  402af5:	48 89 f9             	mov    %rdi,%rcx
  402af8:	48 89 f2             	mov    %rsi,%rdx
  402afb:	be 4b 07 00 00       	mov    $0x74b,%esi
  402b00:	bf ca 2e 40 00       	mov    $0x402eca,%edi
  402b05:	e8 5a f6 ff ff       	callq  402164 <submitr>
  402b0a:	48 83 c4 10          	add    $0x10,%rsp
  402b0e:	eb b5                	jmp    402ac5 <driver_post+0x1f>

0000000000402b10 <check>:
  402b10:	89 f8                	mov    %edi,%eax
  402b12:	c1 e8 1c             	shr    $0x1c,%eax
  402b15:	74 1d                	je     402b34 <check+0x24>
  402b17:	b9 00 00 00 00       	mov    $0x0,%ecx
  402b1c:	83 f9 1f             	cmp    $0x1f,%ecx
  402b1f:	7f 0d                	jg     402b2e <check+0x1e>
  402b21:	89 f8                	mov    %edi,%eax
  402b23:	d3 e8                	shr    %cl,%eax
  402b25:	3c 0a                	cmp    $0xa,%al
  402b27:	74 11                	je     402b3a <check+0x2a>
  402b29:	83 c1 08             	add    $0x8,%ecx
  402b2c:	eb ee                	jmp    402b1c <check+0xc>
  402b2e:	b8 01 00 00 00       	mov    $0x1,%eax
  402b33:	c3                   	retq   
  402b34:	b8 00 00 00 00       	mov    $0x0,%eax
  402b39:	c3                   	retq   
  402b3a:	b8 00 00 00 00       	mov    $0x0,%eax
  402b3f:	c3                   	retq   

0000000000402b40 <gencookie>:
  402b40:	53                   	push   %rbx
  402b41:	83 c7 01             	add    $0x1,%edi
  402b44:	e8 c7 e0 ff ff       	callq  400c10 <srandom@plt>
  402b49:	e8 d2 e1 ff ff       	callq  400d20 <random@plt>
  402b4e:	89 c3                	mov    %eax,%ebx
  402b50:	89 c7                	mov    %eax,%edi
  402b52:	e8 b9 ff ff ff       	callq  402b10 <check>
  402b57:	85 c0                	test   %eax,%eax
  402b59:	74 ee                	je     402b49 <gencookie+0x9>
  402b5b:	89 d8                	mov    %ebx,%eax
  402b5d:	5b                   	pop    %rbx
  402b5e:	c3                   	retq   
  402b5f:	90                   	nop

0000000000402b60 <__libc_csu_init>:
  402b60:	f3 0f 1e fa          	endbr64 
  402b64:	41 57                	push   %r15
  402b66:	49 89 d7             	mov    %rdx,%r15
  402b69:	41 56                	push   %r14
  402b6b:	49 89 f6             	mov    %rsi,%r14
  402b6e:	41 55                	push   %r13
  402b70:	41 89 fd             	mov    %edi,%r13d
  402b73:	41 54                	push   %r12
  402b75:	4c 8d 25 84 12 20 00 	lea    0x201284(%rip),%r12        # 603e00 <__frame_dummy_init_array_entry>
  402b7c:	55                   	push   %rbp
  402b7d:	48 8d 2d 84 12 20 00 	lea    0x201284(%rip),%rbp        # 603e08 <__do_global_dtors_aux_fini_array_entry>
  402b84:	53                   	push   %rbx
  402b85:	4c 29 e5             	sub    %r12,%rbp
  402b88:	48 83 ec 08          	sub    $0x8,%rsp
  402b8c:	e8 37 e0 ff ff       	callq  400bc8 <_init>
  402b91:	48 c1 fd 03          	sar    $0x3,%rbp
  402b95:	74 1f                	je     402bb6 <__libc_csu_init+0x56>
  402b97:	31 db                	xor    %ebx,%ebx
  402b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ba0:	4c 89 fa             	mov    %r15,%rdx
  402ba3:	4c 89 f6             	mov    %r14,%rsi
  402ba6:	44 89 ef             	mov    %r13d,%edi
  402ba9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402bad:	48 83 c3 01          	add    $0x1,%rbx
  402bb1:	48 39 dd             	cmp    %rbx,%rbp
  402bb4:	75 ea                	jne    402ba0 <__libc_csu_init+0x40>
  402bb6:	48 83 c4 08          	add    $0x8,%rsp
  402bba:	5b                   	pop    %rbx
  402bbb:	5d                   	pop    %rbp
  402bbc:	41 5c                	pop    %r12
  402bbe:	41 5d                	pop    %r13
  402bc0:	41 5e                	pop    %r14
  402bc2:	41 5f                	pop    %r15
  402bc4:	c3                   	retq   

0000000000402bc5 <.annobin___libc_csu_fini.start>:
  402bc5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402bcc:	00 00 00 00 

0000000000402bd0 <__libc_csu_fini>:
  402bd0:	f3 0f 1e fa          	endbr64 
  402bd4:	c3                   	retq   

Disassembly of section .fini:

0000000000402bd8 <_fini>:
  402bd8:	f3 0f 1e fa          	endbr64 
  402bdc:	48 83 ec 08          	sub    $0x8,%rsp
  402be0:	48 83 c4 08          	add    $0x8,%rsp
  402be4:	c3                   	retq   
