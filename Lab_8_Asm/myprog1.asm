.686
.model flat, stdcall 
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������
.data
my_name db "",0
first_word db ?,0
.code
start:
; �������������������������������������������������������������������������
	main proc
		mov eax, offset my_name
		fn MessageBox,0,eax,"�������, ��� � ��������",MB_OK
		mov al, my_name[9]
            mov first_word, al
            mov eax, offset first_word
		fn MessageBox,0,eax,"������ ����� �����",MB_OK
            mov al, my_name[15]
            mov first_word, al
            mov eax, offset first_word
		fn MessageBox,0,eax,"������ ����� ��������",MB_OK
            mov my_name[8], "*"
            mov my_name[14], "*"
            mov eax, offset my_name
		fn MessageBox,0,eax,"�������, ��� � �������� ��� ��������",MB_OK
		invoke ExitProcess,0                                     ; bye
	main endp
; �������������������������������������������������������������������������
end start ;� ����� ����� ������������� ��� ���������