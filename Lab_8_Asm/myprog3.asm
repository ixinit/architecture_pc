.686
.model flat, stdcall
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������
; ������� 9
; �������������������������������������������������������������������������

.data
; ��������� ������ � ���������� �� 4 �����
mas dd 2 ,3 ,5 ,7 ,11,
       13,17,19,23,29,
       31,37,41,53,59,
       61,71,73,79,83

.code
start: 
; �������������������������������������������������������������������������
      main proc
            ; ��� ����������� ������ ���������� ������� mas:
            ; [������][�������]
            ; [������ ��������� (dd = 4 �����) * ����� ������ (5) * ����� ������][������ ��������� (dd = 4 �����) * ����� �������]
            mov ebx, mas[4*5*3][4*1]  ; ebx = 71
            add ebx, mas[4*5*1][4*4]  ; add 29
            fn MessageBox,0,str$(ebx)," ����� 2-� ����� (�� 4-� ������, 2-�� ������� � �� 2-� ������, 5-�� �������.)",MB_OK
            invoke ExitProcess,0
      main endp
; �������������������������������������������������������������������������
end start