.686
.model flat, stdcall
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������
; ������� 9
; �������������������������������������������������������������������������

.data
; ���������� ������ � ���������� �� 4 �����
mas dd 2,3,5,7,11,13,17,19,23,29,31,37

.code
start: 
; �������������������������������������������������������������������������
      main proc
            ; ��� ����������� ������ ����������� ������� mas:
            ; ������ ��������� (dd = 4 �����) * �� ������ ������� (��������: 2) = 8
            mov ebx, mas[4*2]  ; ebx = 5 
            add ebx, mas[4*6]  ; add 17
            add ebx, mas[4*7]  ; add 19
            fn MessageBox,0,str$(ebx),"����� ��������� 2,6,7",MB_OK
            invoke ExitProcess,0
      main endp
; �������������������������������������������������������������������������
end start