.686
.model flat, stdcall 
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������
; ������� 9
; �������������������������������������������������������������������������
.const
X db 11
Y db 7

.data
Z dd ?

.code
start:
; �������������������������������������������������������������������������
	main proc
		xor eax, eax ; ��������� eax
		xor ebx, ebx ; ��������� ebx
		
        ; X^3
		mov al, X
		mov bl, al
		mul bl ; � ax 121
		mul bx ; � eax 1331
		
		; 2XY
		mov Z, eax   ; ���������� 1331 � Z
		mov al, Y
		mov cl, X
		mul cl       ; � ax 77
		mov cx, 2
		mul cx       ; � eax 154

        ; Z = X^3-2XY
		sub Z, eax
		
		mov al, X
		mov bl, al
		mul bl       ; � ax 121
		mov bx, 7
		mul bx       ; � eax 847
		
		; Z = X^3-2XY+7X^2
		add Z, eax
		
		mov eax, Z 
		fn MessageBox,0,str$(eax),"z=x^3-2xy+7x^2 ��� X=11 Y=7",MB_OK
		invoke ExitProcess,0
	main endp
; �������������������������������������������������������������������������
end start