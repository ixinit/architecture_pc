.686
.model flat, stdcall
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������
.data
message	db '� ������ � ���� � ��������!!!',0
perem_1	dd 0f1h
perem_2	dd 17fh
perem_3	dd 0fah
mas	db 10 dup(' ')
pole_1	db 5 dup(?)
adr	dd perem_3
fin	db '����� ������� ������ ���������'

.code
start:
; �������������������������������������������������������������������������
main proc
	mov esi,offset message 
	fn MessageBox,0,esi,"��������� ���������� ������",MB_OK
	mov eax, perem_1
	fn MessageBox,0,str$(eax),"�������� ��������",MB_OK
	mov edx, 12345 
	fn MessageBox,0,str$(edx),"�������� ��������",MB_OK
	fn MessageBox,0,str$(perem_2),"��������� ���������� ������",MB_OK
	invoke ExitProcess,0
main endp
; �������������������������������������������������������������������������
end start