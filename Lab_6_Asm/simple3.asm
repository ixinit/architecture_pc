; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������
.data  ; ������ ������
    a DD 61
    b DD 29
.code
start:
; �������������������������������������������������������������������������
main proc
           fn MessageBox,0,"������ �� ���������� �.�.","������� ���������",MB_OK 
           mov eax, a
           add eax, b
           fn MessageBox,0,str$(eax)," a + b ",MB_OK ; call the message box
           mov eax, a
           sub eax, b
           fn MessageBox,0,str$(eax)," a - b ",MB_OK ; call the message box
           invoke ExitProcess,0                                     ; bye
main endp
; �������������������������������������������������������������������������
end start