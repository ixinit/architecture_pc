.686
.model flat, stdcall
; �������������������������������������������������������������������������
    include \masm32\include\masm32rt.inc
; �������������������������������������������������������������������������
.data
;����������� �����
v1db	db ?
v2db	db '���� �������'
v3db	db 56
v4db	db 04fh
v5db	db 0110100b
v6db	db 1,'dat','name',42
v7db	db 8 dup(0)
;����������� �����
v4dw	dw 24,5,7
;����������� �������� �����
v1dd	dd ?
v2dd	dd 'FAdf'
v3dd	dd 08234
v4dd	dd 017h,05fh
;����������� ������������� �����
v1dq	dq ?
d1	equ 25
d2	=   v3db

.code
start:
; �������������������������������������������������������������������������
main proc
	fn MessageBox,0,"�� ���������� �.�.","������� ���������� ������",MB_OK
	invoke ExitProcess,0
main endp
; �������������������������������������������������������������������������
end start