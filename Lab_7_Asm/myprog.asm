; �� ��������!
.686
.model flat, stdcall
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������
.const
my_day	dd 29

.data
num	dd 9 

my_name	db '�����'
year	dd 2001 + num
day		dd ?
day_month	db ?,'����'

.code
start:
; �������������������������������������������������������������������������
main proc
	mov eax, my_day     ; eax = 0000001D
	mov day, eax	    ; day = 0000001D
	mov day_month, al   ; day_month = 
	;mov esi,offset message 
	fn MessageBox,0,str$(my_name),"���",MB_OK
	;mov eax, perem_1
	fn MessageBox,0,str$(year),"��� �������� + ����� � ������",MB_OK
	;mov edx, 12345 
	fn MessageBox,0,str$(day),"���� ��������",MB_OK
	fn MessageBox,0,str$(day_month),"���� ��������, ����� ��������",MB_OK
	invoke ExitProcess,0
main endp
; �������������������������������������������������������������������������
end start