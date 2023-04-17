	.file	"Untitled-1.cpp"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
	.align 8
.LC0:
	.ascii "The Great Barrier Reef is the largest living structure on Earth, stretching over 1,400 miles long.\0"
	.align 8
.LC1:
	.ascii "The Anglo-Zanzibar War in 1896 between Britain and Zanzibar only lasted 38 minutes.\0"
	.align 8
.LC2:
	.ascii "A group of flamingos is called a flamboyance.\0"
	.align 8
.LC3:
	.ascii "The unicorn is the national animal of Scotland.\0"
	.align 8
.LC4:
	.ascii "The oldest piece of chewing gum was discovered in Finland and is believed to be over 9,000 years old.\0"
	.align 8
.LC5:
	.ascii "The shortest verse in the Bible is Jesus wept, found in John 11:35.\0"
	.align 8
.LC6:
	.ascii "In Switzerland, it is illegal to own just one guinea pig because they are social animals and need companionship.\0"
	.align 8
.LC7:
	.ascii "A cockroach can live for several weeks without its head because it breathes through tiny holes on its body segments.\0"
	.align 8
.LC8:
	.ascii "The world's largest snowflake was recorded in Montana in 1887.\0"
	.align 8
.LC9:
	.ascii "The national animal of Canada is the beaver, known for its industriousness and building skills.\0"
	.align 8
.LC10:
	.ascii "Enter the name of the first player: \0"
	.align 8
.LC11:
	.ascii "Enter the name of the second player: \0"
.LC12:
	.ascii "Enter True or False: \0"
.LC13:
	.ascii "true\0"
.LC14:
	.ascii "Correct answer!\0"
.LC15:
	.ascii "Wrong answer!\0"
.LC16:
	.ascii " loses 1 health point!\0"
.LC17:
	.ascii " wins!\0"
.LC18:
	.ascii ": \0"
.LC19:
	.ascii " health points\0"
	.text
	.globl	_Z4gamev
	.def	_Z4gamev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z4gamev
_Z4gamev:
.LFB3030:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 808
	.seh_stackalloc	808
	lea	rbp, 128[rsp]
	.seh_setframe	rbp, 128
	.seh_endprologue
	lea	rax, 649[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 649[rbp]
	lea	rax, 608[rbp]
	mov	r8, rdx
	lea	rdx, .LC0[rip]
	mov	rcx, rax
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE0:
	lea	rax, 649[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 650[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 650[rbp]
	lea	rax, 576[rbp]
	mov	r8, rdx
	lea	rdx, .LC1[rip]
	mov	rcx, rax
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE1:
	lea	rax, 650[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 651[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 651[rbp]
	lea	rax, 544[rbp]
	mov	r8, rdx
	lea	rdx, .LC2[rip]
	mov	rcx, rax
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE2:
	lea	rax, 651[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 652[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 652[rbp]
	lea	rax, 512[rbp]
	mov	r8, rdx
	lea	rdx, .LC3[rip]
	mov	rcx, rax
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE3:
	lea	rax, 652[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 653[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 653[rbp]
	lea	rax, 480[rbp]
	mov	r8, rdx
	lea	rdx, .LC4[rip]
	mov	rcx, rax
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE4:
	lea	rax, 653[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 654[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 654[rbp]
	lea	rax, 448[rbp]
	mov	r8, rdx
	lea	rdx, .LC5[rip]
	mov	rcx, rax
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE5:
	lea	rax, 654[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 655[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 655[rbp]
	lea	rax, 416[rbp]
	mov	r8, rdx
	lea	rdx, .LC6[rip]
	mov	rcx, rax
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE6:
	lea	rax, 655[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 656[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 656[rbp]
	lea	rax, 384[rbp]
	mov	r8, rdx
	lea	rdx, .LC7[rip]
	mov	rcx, rax
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE7:
	lea	rax, 656[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 657[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 657[rbp]
	lea	rax, 352[rbp]
	mov	r8, rdx
	lea	rdx, .LC8[rip]
	mov	rcx, rax
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE8:
	lea	rax, 657[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	lea	rax, 658[rbp]
	mov	rcx, rax
	call	_ZNSaIcEC1Ev
	lea	rdx, 658[rbp]
	lea	rax, 320[rbp]
	mov	r8, rdx
	lea	rdx, .LC9[rip]
	mov	rcx, rax
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE9:
	lea	rax, 658[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	mov	rsi, rbp
	mov	ebx, 9
	lea	rax, 608[rbp]
	mov	rdx, rax
	mov	rcx, rsi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	lea	rdi, 32[rsi]
	dec	rbx
	lea	rax, 576[rbp]
	mov	rdx, rax
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	add	rdi, 32
	dec	rbx
	lea	rax, 544[rbp]
	mov	rdx, rax
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	add	rdi, 32
	dec	rbx
	lea	rax, 512[rbp]
	mov	rdx, rax
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	add	rdi, 32
	dec	rbx
	lea	rax, 480[rbp]
	mov	rdx, rax
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	add	rdi, 32
	dec	rbx
	lea	rax, 448[rbp]
	mov	rdx, rax
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	add	rdi, 32
	dec	rbx
	lea	rax, 416[rbp]
	mov	rdx, rax
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	add	rdi, 32
	dec	rbx
	lea	rax, 384[rbp]
	mov	rdx, rax
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	add	rdi, 32
	dec	rbx
	lea	rax, 352[rbp]
	mov	rdx, rax
	mov	rcx, rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	lea	rcx, 32[rdi]
	dec	rbx
	lea	rax, 320[rbp]
	mov	rdx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE10:
	mov	DWORD PTR 668[rbp], 3
	mov	DWORD PTR 664[rbp], 3
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	lea	rax, -64[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	lea	rdx, .LC10[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
.LEHB11:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lea	rax, -32[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt3cin[rip]
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	lea	rdx, .LC11[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lea	rax, -64[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt3cin[rip]
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	DWORD PTR 660[rbp], 0
.L12:
	cmp	DWORD PTR 660[rbp], 9
	jg	.L2
	mov	rax, rbp
	mov	edx, DWORD PTR 660[rbp]
	movsx	rdx, edx
	sal	rdx, 5
	add	rax, rdx
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
.LEHE11:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	lea	rdx, .LC12[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
.LEHB12:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lea	rax, -96[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt3cin[rip]
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	lea	rax, -96[rbp]
	lea	rdx, .LC13[rip]
	mov	rcx, rax
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	test	al, al
	je	.L3
	mov	BYTE PTR 659[rbp], 1
	jmp	.L4
.L3:
	mov	BYTE PTR 659[rbp], 0
.L4:
	movzx	ebx, BYTE PTR 659[rbp]
	call	rand
	and	eax, 1
	test	eax, eax
	setne	al
	movzx	eax, al
	cmp	ebx, eax
	sete	al
	test	al, al
	je	.L5
	lea	rdx, .LC14[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	jmp	.L6
.L5:
	lea	rdx, .LC15[rip]
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	call	rand
	and	eax, 1
	test	eax, eax
	setne	al
	test	al, al
	je	.L7
	dec	DWORD PTR 668[rbp]
	lea	rax, -32[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	lea	rdx, .LC16[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	jmp	.L8
.L7:
	dec	DWORD PTR 664[rbp]
	lea	rax, -64[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	lea	rdx, .LC16[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
.L8:
	cmp	DWORD PTR 668[rbp], 0
	jne	.L9
	lea	rax, -64[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	lea	rdx, .LC17[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	mov	ebx, 0
	jmp	.L10
.L9:
	cmp	DWORD PTR 664[rbp], 0
	jne	.L6
	lea	rax, -32[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	lea	rdx, .LC17[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	mov	ebx, 0
	jmp	.L10
.L6:
	lea	rax, -32[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	lea	rdx, .LC18[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rcx, rax
	mov	eax, DWORD PTR 668[rbp]
	mov	edx, eax
	call	_ZNSolsEi
	lea	rdx, .LC19[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
	lea	rax, -64[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR .refptr._ZSt4cout[rip]
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	lea	rdx, .LC18[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rcx, rax
	mov	eax, DWORD PTR 664[rbp]
	mov	edx, eax
	call	_ZNSolsEi
	lea	rdx, .LC19[rip]
	mov	rcx, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	rdx, QWORD PTR .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_[rip]
	mov	rcx, rax
	call	_ZNSolsEPFRSoS_E
.LEHE12:
	mov	ebx, 1
.L10:
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	cmp	ebx, 1
	jne	.L2
	inc	DWORD PTR 660[rbp]
	jmp	.L12
.L2:
	lea	rax, -64[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	rbx, rbp
	add	rbx, 320
.L14:
	mov	rax, rbp
	cmp	rbx, rax
	je	.L13
	sub	rbx, 32
	mov	rcx, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L14
.L13:
	lea	rax, 320[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 352[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 384[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 416[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 448[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 480[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 512[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 544[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 576[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, 608[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L55
.L42:
	mov	rbx, rax
	lea	rax, 649[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	mov	rax, rbx
	mov	rcx, rax
.LEHB13:
	call	_Unwind_Resume
.L43:
	mov	rbx, rax
	lea	rax, 650[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L17
.L44:
	mov	rbx, rax
	lea	rax, 651[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L19
.L45:
	mov	rbx, rax
	lea	rax, 652[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L21
.L46:
	mov	rbx, rax
	lea	rax, 653[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L23
.L47:
	mov	rbx, rax
	lea	rax, 654[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L25
.L48:
	mov	rbx, rax
	lea	rax, 655[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L27
.L49:
	mov	rbx, rax
	lea	rax, 656[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L29
.L50:
	mov	rbx, rax
	lea	rax, 657[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L31
.L51:
	mov	rbx, rax
	lea	rax, 658[rbp]
	mov	rcx, rax
	call	_ZNSaIcED1Ev
	jmp	.L33
.L52:
	mov	rdi, rax
	test	rsi, rsi
	je	.L35
	mov	eax, 9
	sub	rax, rbx
	sal	rax, 5
	lea	rbx, [rsi+rax]
.L36:
	cmp	rbx, rsi
	je	.L35
	sub	rbx, 32
	mov	rcx, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L36
.L35:
	mov	rbx, rdi
	jmp	.L37
.L54:
	mov	rbx, rax
	lea	rax, -96[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L39
.L53:
	mov	rbx, rax
.L39:
	lea	rax, -64[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	rsi, rbx
	mov	rbx, rbp
	add	rbx, 320
.L41:
	mov	rax, rbp
	cmp	rbx, rax
	je	.L40
	sub	rbx, 32
	mov	rcx, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L41
.L40:
	mov	rbx, rsi
.L37:
	lea	rax, 320[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L33:
	lea	rax, 352[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L31:
	lea	rax, 384[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L29:
	lea	rax, 416[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L27:
	lea	rax, 448[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L25:
	lea	rax, 480[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L23:
	lea	rax, 512[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L21:
	lea	rax, 544[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L19:
	lea	rax, 576[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L17:
	lea	rax, 608[rbp]
	mov	rcx, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	mov	rax, rbx
	mov	rcx, rax
	call	_Unwind_Resume
	nop
.LEHE13:
.L55:
	add	rsp, 808
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3030:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3030-.LLSDACSB3030
.LLSDACSB3030:
	.uleb128 .LEHB0-.LFB3030
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L42-.LFB3030
	.uleb128 0
	.uleb128 .LEHB1-.LFB3030
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L43-.LFB3030
	.uleb128 0
	.uleb128 .LEHB2-.LFB3030
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L44-.LFB3030
	.uleb128 0
	.uleb128 .LEHB3-.LFB3030
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L45-.LFB3030
	.uleb128 0
	.uleb128 .LEHB4-.LFB3030
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L46-.LFB3030
	.uleb128 0
	.uleb128 .LEHB5-.LFB3030
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L47-.LFB3030
	.uleb128 0
	.uleb128 .LEHB6-.LFB3030
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L48-.LFB3030
	.uleb128 0
	.uleb128 .LEHB7-.LFB3030
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L49-.LFB3030
	.uleb128 0
	.uleb128 .LEHB8-.LFB3030
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L50-.LFB3030
	.uleb128 0
	.uleb128 .LEHB9-.LFB3030
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L51-.LFB3030
	.uleb128 0
	.uleb128 .LEHB10-.LFB3030
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L52-.LFB3030
	.uleb128 0
	.uleb128 .LEHB11-.LFB3030
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L53-.LFB3030
	.uleb128 0
	.uleb128 .LEHB12-.LFB3030
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L54-.LFB3030
	.uleb128 0
	.uleb128 .LEHB13-.LFB3030
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE3030:
	.text
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB3031:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	call	__main
	call	_Z4gamev
	mov	eax, 0
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.text$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"x"
	.linkonce discard
	.globl	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.def	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB3294:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rax, QWORD PTR 24[rbp]
	mov	rdx, rax
	mov	rcx, QWORD PTR 16[rbp]
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	test	eax, eax
	sete	al
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3561:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitD1Ev
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB3560:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	mov	DWORD PTR 24[rbp], edx
	cmp	DWORD PTR 16[rbp], 1
	jne	.L63
	cmp	DWORD PTR 24[rbp], 65535
	jne	.L63
	lea	rcx, _ZStL8__ioinit[rip]
	call	_ZNSt8ios_base4InitC1Ev
	lea	rcx, __tcf_0[rip]
	call	atexit
.L63:
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__Z4gamev;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z4gamev
_GLOBAL__sub_I__Z4gamev:
.LFB3562:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	edx, 65535
	mov	ecx, 1
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z4gamev
	.ident	"GCC: (GNU) 9.2.0"
	.def	_ZNSaIcEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
