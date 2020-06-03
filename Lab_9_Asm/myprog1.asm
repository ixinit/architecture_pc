.686
.model flat, stdcall 
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
    include \masm32\include\masm32rt.inc
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
; ┬рЁшрэЄ 9
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
.const
X db 11
Y db 7

.data
Z dd ?

.code
start:
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	main proc
		xor eax, eax ; юсэєыхэшх eax
		xor ebx, ebx ; юсэєыхэшх ebx
		
        ; X^3
		mov al, X
		mov bl, al
		mul bl ; т ax 121
		mul bx ; т eax 1331
		
		; 2XY
		mov Z, eax   ; ёюїЁрэхэшх 1331 т Z
		mov al, Y
		mov cl, X
		mul cl       ; т ax 77
		mov cx, 2
		mul cx       ; т eax 154

        ; Z = X^3-2XY
		sub Z, eax
		
		mov al, X
		mov bl, al
		mul bl       ; т ax 121
		mov bx, 7
		mul bx       ; т eax 847
		
		; Z = X^3-2XY+7X^2
		add Z, eax
		
		mov eax, Z 
		fn MessageBox,0,str$(eax),"z=x^3-2xy+7x^2 яЁш X=11 Y=7",MB_OK
		invoke ExitProcess,0
	main endp
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
end start