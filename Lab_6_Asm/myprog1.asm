.686
.model flat, stdcall 
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������

.data
	num DD 9   ; ����� � �������
	numl DD 14 ; ����� ������ ����� �������
	sum DD ?
	raz DD ?

.code
start:
; �������������������������������������������������������������������������
main proc
		neg numl      ; numl = -14
		mov EAX, num  ; EAX = 9 
		mov ECX, numl ; ECX = -14
        add EAX, ECX  ; EAX = -5 
        mov sum, EAX  ; sum = -5

        mov EAX, num   ; EAX = 9
		sub EAX, numl  ; EAX = 23
        mov raz, EAX   ; raz = 23
		print str$(sum), 13, 10
		print str$(raz), 13, 10

		invoke ExitProcess,0                                     ; bye
main endp
; �������������������������������������������������������������������������
end start