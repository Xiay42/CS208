lotsafuncs:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:       f3 0f 1e fa             endbr64
  401004:       48 83 ec 08             sub    $0x8,%rsp
  401008:       48 8b 05 e9 2f 00 00    mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__>
  40100f:       48 85 c0                test   %rax,%rax
  401012:       74 02                   je     401016 <_init+0x16>
  401014:       ff d0                   callq  *%rax
  401016:       48 83 c4 08             add    $0x8,%rsp
  40101a:       c3                      retq

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:       ff 35 e2 2f 00 00       pushq  0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:       f2 ff 25 e3 2f 00 00    bnd jmpq *0x2fe3(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:       0f 1f 00                nopl   (%rax)
  401030:       f3 0f 1e fa             endbr64
  401034:       68 00 00 00 00          pushq  $0x0
  401039:       f2 e9 e1 ff ff ff       bnd jmpq 401020 <.plt>
  40103f:       90                      nop

Disassembly of section .plt.sec:

0000000000401040 <printf@plt>:
  401040:       f3 0f 1e fa             endbr64
  401044:       f2 ff 25 cd 2f 00 00    bnd jmpq *0x2fcd(%rip)        # 404018 <printf@GLIBC_2.2.5>
  40104b:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401050 <_start>:
  401050:       f3 0f 1e fa             endbr64
  401054:       31 ed                   xor    %ebp,%ebp
  401056:       49 89 d1                mov    %rdx,%r9
  401059:       5e                      pop    %rsi
  40105a:       48 89 e2                mov    %rsp,%rdx
  40105d:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
  401061:       50                      push   %rax
  401062:       54                      push   %rsp
  401063:       49 c7 c0 60 12 40 00    mov    $0x401260,%r8
  40106a:       48 c7 c1 f0 11 40 00    mov    $0x4011f0,%rcx
  401071:       48 c7 c7 75 11 40 00    mov    $0x401175,%rdi
  401078:       ff 15 72 2f 00 00       callq  *0x2f72(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40107e:       f4                      hlt
  40107f:       90                      nop

0000000000401080 <_dl_relocate_static_pie>:
  401080:       f3 0f 1e fa             endbr64
  401084:       c3                      retq
  401085:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  40108c:       00 00 00
  40108f:       90                      nop

0000000000401090 <deregister_tm_clones>:
  401090:       b8 30 40 40 00          mov    $0x404030,%eax
  401095:       48 3d 30 40 40 00       cmp    $0x404030,%rax
  40109b:       74 13                   je     4010b0 <deregister_tm_clones+0x20>
  40109d:       b8 00 00 00 00          mov    $0x0,%eax
  4010a2:       48 85 c0                test   %rax,%rax
  4010a5:       74 09                   je     4010b0 <deregister_tm_clones+0x20>
  4010a7:       bf 30 40 40 00          mov    $0x404030,%edi
  4010ac:       ff e0                   jmpq   *%rax
  4010ae:       66 90                   xchg   %ax,%ax
  4010b0:       c3                      retq
  4010b1:       66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  4010b8:       00 00 00 00
  4010bc:       0f 1f 40 00             nopl   0x0(%rax)

00000000004010c0 <register_tm_clones>:
  4010c0:       be 30 40 40 00          mov    $0x404030,%esi
  4010c5:       48 81 ee 30 40 40 00    sub    $0x404030,%rsi
  4010cc:       48 89 f0                mov    %rsi,%rax
  4010cf:       48 c1 ee 3f             shr    $0x3f,%rsi
  4010d3:       48 c1 f8 03             sar    $0x3,%rax
  4010d7:       48 01 c6                add    %rax,%rsi
  4010da:       48 d1 fe                sar    %rsi
  4010dd:       74 11                   je     4010f0 <register_tm_clones+0x30>
  4010df:       b8 00 00 00 00          mov    $0x0,%eax
  4010e4:       48 85 c0                test   %rax,%rax
  4010e7:       74 07                   je     4010f0 <register_tm_clones+0x30>
  4010e9:       bf 30 40 40 00          mov    $0x404030,%edi
  4010ee:       ff e0                   jmpq   *%rax
  4010f0:       c3                      retq
  4010f1:       66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  4010f8:       00 00 00 00
  4010fc:       0f 1f 40 00             nopl   0x0(%rax)

0000000000401100 <__do_global_dtors_aux>:
  401100:       f3 0f 1e fa             endbr64
  401104:       80 3d 25 2f 00 00 00    cmpb   $0x0,0x2f25(%rip)        # 404030 <__TMC_END__>
  40110b:       75 13                   jne    401120 <__do_global_dtors_aux+0x20>
  40110d:       55                      push   %rbp
  40110e:       48 89 e5                mov    %rsp,%rbp
  401111:       e8 7a ff ff ff          callq  401090 <deregister_tm_clones>
  401116:       c6 05 13 2f 00 00 01    movb   $0x1,0x2f13(%rip)        # 404030 <__TMC_END__>
  40111d:       5d                      pop    %rbp
  40111e:       c3                      retq
  40111f:       90                      nop
  401120:       c3                      retq
  401121:       66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  401128:       00 00 00 00
  40112c:       0f 1f 40 00             nopl   0x0(%rax)

0000000000401130 <frame_dummy>:
  401130:       f3 0f 1e fa             endbr64
  401134:       eb 8a                   jmp    4010c0 <register_tm_clones>

0000000000401136 <do_something>:
  401136:       f3 0f 1e fa             endbr64
  40113a:       55                      push   %rbp
  40113b:       48 89 e5                mov    %rsp,%rbp
  40113e:       89 7d fc                mov    %edi,-0x4(%rbp)
  401141:       89 75 f8                mov    %esi,-0x8(%rbp)
  401144:       89 55 f4                mov    %edx,-0xc(%rbp)
  401147:       89 4d f0                mov    %ecx,-0x10(%rbp)
  40114a:       44 89 45 ec             mov    %r8d,-0x14(%rbp)
  40114e:       44 89 4d e8             mov    %r9d,-0x18(%rbp)
  401152:       8b 55 fc                mov    -0x4(%rbp),%edx
  401155:       8b 45 f8                mov    -0x8(%rbp),%eax
  401158:       01 c2                   add    %eax,%edx
  40115a:       8b 45 f4                mov    -0xc(%rbp),%eax
  40115d:       01 c2                   add    %eax,%edx
  40115f:       8b 45 f0                mov    -0x10(%rbp),%eax
  401162:       01 c2                   add    %eax,%edx
  401164:       8b 45 ec                mov    -0x14(%rbp),%eax
  401167:       01 c2                   add    %eax,%edx
  401169:       8b 45 e8                mov    -0x18(%rbp),%eax
  40116c:       01 c2                   add    %eax,%edx
  40116e:       8b 45 10                mov    0x10(%rbp),%eax
  401171:       01 d0                   add    %edx,%eax
  401173:       5d                      pop    %rbp
  401174:       c3                      retq

0000000000401175 <main>:
  401175:       f3 0f 1e fa             endbr64
  401179:       55                      push   %rbp
  40117a:       48 89 e5                mov    %rsp,%rbp
  40117d:       48 83 ec 20             sub    $0x20,%rsp
  401181:       c7 45 fc 01 00 00 00    movl   $0x1,-0x4(%rbp)
  401188:       c7 45 f8 02 00 00 00    movl   $0x2,-0x8(%rbp)
  40118f:       c7 45 f4 03 00 00 00    movl   $0x3,-0xc(%rbp)
  401196:       c7 45 f0 04 00 00 00    movl   $0x4,-0x10(%rbp)
  40119d:       c7 45 ec 05 00 00 00    movl   $0x5,-0x14(%rbp)
  4011a4:       c7 45 e8 06 00 00 00    movl   $0x6,-0x18(%rbp)
  4011ab:       c7 45 e4 07 00 00 00    movl   $0x7,-0x1c(%rbp)
  4011b2:       44 8b 4d e8             mov    -0x18(%rbp),%r9d
  4011b6:       44 8b 45 ec             mov    -0x14(%rbp),%r8d
  4011ba:       8b 4d f0                mov    -0x10(%rbp),%ecx
  4011bd:       8b 55 f4                mov    -0xc(%rbp),%edx
  4011c0:       8b 75 f8                mov    -0x8(%rbp),%esi
  4011c3:       8b 45 fc                mov    -0x4(%rbp),%eax
  4011c6:       8b 7d e4                mov    -0x1c(%rbp),%edi
  4011c9:       57                      push   %rdi
  4011ca:       89 c7                   mov    %eax,%edi
  4011cc:       e8 65 ff ff ff          callq  401136 <do_something>
  4011d1:       48 83 c4 08             add    $0x8,%rsp
  4011d5:       89 c6                   mov    %eax,%esi
  4011d7:       48 8d 3d 26 0e 00 00    lea    0xe26(%rip),%rdi        # 402004 <_IO_stdin_used+0x4>
  4011de:       b8 00 00 00 00          mov    $0x0,%eax
  4011e3:       e8 58 fe ff ff          callq  401040 <printf@plt>
  4011e8:       b8 00 00 00 00          mov    $0x0,%eax
  4011ed:       c9                      leaveq
  4011ee:       c3                      retq
  4011ef:       90                      nop

00000000004011f0 <__libc_csu_init>:
  4011f0:       f3 0f 1e fa             endbr64
  4011f4:       41 57                   push   %r15
  4011f6:       4c 8d 3d 13 2c 00 00    lea    0x2c13(%rip),%r15        # 403e10 <__frame_dummy_init_array_entry>
  4011fd:       41 56                   push   %r14
  4011ff:       49 89 d6                mov    %rdx,%r14
  401202:       41 55                   push   %r13
  401204:       49 89 f5                mov    %rsi,%r13
  401207:       41 54                   push   %r12
  401209:       41 89 fc                mov    %edi,%r12d
  40120c:       55                      push   %rbp
  40120d:       48 8d 2d 04 2c 00 00    lea    0x2c04(%rip),%rbp        # 403e18 <__do_global_dtors_aux_fini_array_entry>
  401214:       53                      push   %rbx
  401215:       4c 29 fd                sub    %r15,%rbp
  401218:       48 83 ec 08             sub    $0x8,%rsp
  40121c:       e8 df fd ff ff          callq  401000 <_init>
  401221:       48 c1 fd 03             sar    $0x3,%rbp
  401225:       74 1f                   je     401246 <__libc_csu_init+0x56>
  401227:       31 db                   xor    %ebx,%ebx
  401229:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
  401230:       4c 89 f2                mov    %r14,%rdx
  401233:       4c 89 ee                mov    %r13,%rsi
  401236:       44 89 e7                mov    %r12d,%edi
  401239:       41 ff 14 df             callq  *(%r15,%rbx,8)
  40123d:       48 83 c3 01             add    $0x1,%rbx
  401241:       48 39 dd                cmp    %rbx,%rbp
  401244:       75 ea                   jne    401230 <__libc_csu_init+0x40>
  401246:       48 83 c4 08             add    $0x8,%rsp
  40124a:       5b                      pop    %rbx
  40124b:       5d                      pop    %rbp
  40124c:       41 5c                   pop    %r12
  40124e:       41 5d                   pop    %r13
  401250:       41 5e                   pop    %r14
  401252:       41 5f                   pop    %r15
  401254:       c3                      retq
  401255:       66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  40125c:       00 00 00 00

0000000000401260 <__libc_csu_fini>:
  401260:       f3 0f 1e fa             endbr64
  401264:       c3                      retq

Disassembly of section .fini:

0000000000401268 <_fini>:
  401268:       f3 0f 1e fa             endbr64
  40126c:       48 83 ec 08             sub    $0x8,%rsp
  401270:       48 83 c4 08             add    $0x8,%rsp
  401274:       c3                      retq