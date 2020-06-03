.686
.model flat, stdcall 
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
    include \masm32\include\Fpu.inc
    includelib \masm32\lib\Fpu.lib
; �������������������������������������������������������������������������
.const
 my_name db "",0
 
.data
 temp dd 4.0
 temp2 dd 2.0
 result db 25 dup(0)

.data? 
 const_a dd ?
 const_b dd ?
 const_c dd ?
 D dd ?
 
.code
start:
; �������������������������������������������������������������������������
	main proc
		 
		 ; ����� ���
		 mov esi,offset my_name 
		 fn MessageBox,0,esi,"���",MB_OK ; ����� ���
		 
		 ; ����� ����� a, b, c
		 call inputs
		 
		 ; ��������� ���� ���������
		 finit
		 fld const_a
		 ftst
		 fstsw ax
		 sahf 
			jz a_eq_zero
		 jmp squar_eq
		 a_eq_zero:
			finit
			fld const_b
			ftst
			fstsw ax 
			sahf
				jz ab_eq_zero
			jmp line_eq
			ab_eq_zero:
				finit
				fld const_c
				ftst
				fstsw ax
				sahf 
					jz inf_eq ; abc_eq_zero
				jmp no_eq
		 
	main endp
; �������������������������������������������������������������������������

	inputs:
		; ���� ���������� a, b, c
		mov esi, input("Enter a number A: ")
		print chr$(13,10)
		invoke FpuAtoFL, esi, 0, DEST_FPU
        fst const_a
		
		mov esi, input("Enter a number B: ")
		print chr$(13,10)
		invoke FpuAtoFL, esi, 0, DEST_FPU
        fst const_b
		
		mov esi, input("Enter a number C: ")
		print chr$(13,10)
		invoke FpuAtoFL, esi, 0, DEST_FPU
        fst const_c
		
		ret
		
	squar_eq:
		; ���������� ���������
		call discr
		ftst ; D ? 0
		fstsw ax
		sahf 
			ja two_roots
			jb no_eq
			jz one_root
	
	line_eq:
		; �������� ���������
		finit
		fld const_c
		fchs
		fld const_b
		fdiv ; -c/b
		invoke FpuFLtoA, 0, 2, ADDR result, SRC1_FPU or SRC2_DIMM
		fn MessageBox,0,ADDR result,"�������� ��������� (1 ������)",MB_OK
		jmp close
		
	discr:
		finit
		; D = sqr(b)-4*a*c 
		fld const_b
		fmul const_b
		fld const_a
		fld temp 
		fmul 
		fld const_c
		fmul 
		fsubp st(1),st(0) 
		fst D
		; �����
        ;invoke FpuFLtoA, 0, 2, ADDR result, SRC1_FPU or SRC2_DIMM
		;fn MessageBox,0,ADDR result,"������������",MB_OK
		ret
	
	two_roots:
		;x1 = (-(D^[1/2])-b)/2a
        fsqrt ; ������� ���������� ������ �������������
        fchs ; ������ ����, �.�. -(D^[1/2])
        fsub const_b ; ������� -(D^[1/2])-b
        fld const_a ; ������� a
		fld temp2 ; ������� 2
		fmul ; ����������� 2a
		fdiv ; ����� -(D^[1/2])-b �� 2a
		invoke FpuFLtoA, 0, 2, ADDR result, SRC1_FPU or SRC2_DIMM
		fn MessageBox, 0, ADDR result, "���������� ��������� - (2 �����)", MB_OK
		;x2 = ((D^[1/2])-b)/2a
		finit
		fld D
		fsqrt ; ������� ���������� ������ �������������
        fsub const_b ; ������� (D^[1/2])-b
        fld const_a ; ������� a
		fld temp2 ; ������� 2
		fmul ; ����������� 2a
		fdiv ; ����� -(D^[1/2])-b �� 2a
        invoke FpuFLtoA, 0, 2, ADDR result, SRC1_FPU or SRC2_DIMM
		fn MessageBox, 0, ADDR result, "���������� ��������� - (2 �����)", MB_OK
		
		jmp close
	
	one_root:
		;x1 = -b/2a
		fld const_b
		fchs
		fld temp2
		fld const_a
		fmul
		fdiv
		invoke FpuFLtoA, 0, 2, ADDR result, SRC1_FPU or SRC2_DIMM
		fn MessageBox,0,ADDR result, "���������� ��������� (1 ������)",MB_OK
		jmp close
		
	inf_eq:
		fn MessageBox,0,"���������� ����� ������","���������",MB_OK
		jmp close
		
	no_eq:
		fn MessageBox,0,"��� ������","���������",MB_OK
		jmp close
	
	close:
		invoke ExitProcess,0
		ret

end start