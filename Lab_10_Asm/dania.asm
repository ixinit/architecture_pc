.386
.model flat, stdcall
; ������������������������������������������������������������������               ������� 3
include \masm32\include\masm32rt.inc
; ������������������������������������������������������������������
.data
mass dd 2 ,3 ,4 ,6 ,1 ,7 ,
        9 ,5 ,3 ,8 ,3 ,2 
.code
start:
; ������������������������������������������������������������������
main proc

mov eax, mass
lea esi, mass
mov ebp, 0; ���������� ����� ������� ������ 3
mov cx, 12; ������� �����
mov edx, 3; ��� ����������� 

cycle:
div ebx
cmp edx, 0 ; C��������� ������� � �����
je salo

salo:
inc ebp ; ��������� 1 � ���������� �����
loop cycle

fn MessageBox,0,str$(ebp),"���������� ����� ������� 3",MB_OK
invoke ExitProcess,0

main endp

; ������������������������������������������������������������������
end start