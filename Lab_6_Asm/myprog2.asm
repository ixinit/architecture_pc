.686
.model flat, stdcall 
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������

.data
		a DD ?
		b DD ?

.code
start:
; �������������������������������������������������������������������������
main proc
		
		mov a, sval(input("Enter a: "))
		mov b, sval(input("Enter b: "))
		mov EAX, a
		mov ECX, b
		
		cmp EAX, ECX 
			je equal          ; ==
			jg bigger         ; >
			jl smaller        ; <

		equal:
			fn MessageBox,0," a ����� b ","���������",MB_OK
			jmp over
	
		bigger:
			fn MessageBox,0," a ������ b ","���������",MB_OK
			jmp over
	  
		smaller:
			fn MessageBox,0," a ������ b ","���������",MB_OK
	
		over:
			invoke ExitProcess,0                                     ; bye
main endp
; �������������������������������������������������������������������������
end start