; ═┼ ╨└┴╬╥└┼╥!
.686
.model flat, stdcall
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
    include \masm32\include\masm32rt.inc
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
.const
my_day	dd 29

.data
num	dd 9 

my_name	db '└ЁЄхь'
year	dd 2001 + num
day		dd ?
day_month	db ?,'╠рЁЄ'

.code
start:
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
main proc
	mov eax, my_day     ; eax = 0000001D
	mov day, eax	    ; day = 0000001D
	mov day_month, al   ; day_month = 
	;mov esi,offset message 
	fn MessageBox,0,str$(my_name),"╚ь ",MB_OK
	;mov eax, perem_1
	fn MessageBox,0,str$(year),"├юф Ёюцфхэш  + эюьхЁ т уЁєяях",MB_OK
	;mov edx, 12345 
	fn MessageBox,0,str$(day),"─хэ№ Ёюцфхэш ",MB_OK
	fn MessageBox,0,str$(day_month),"─хэ№ Ёюцфхэш , ьхё Ў Ёюцфхэш ",MB_OK
	invoke ExitProcess,0
main endp
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
end start