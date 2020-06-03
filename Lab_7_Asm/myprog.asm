.686
.model flat, stdcall
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
    include \masm32\include\masm32rt.inc
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
.const
my_day	dd 
num	dd 

.data
my_name	db '',0
year	dd 
day		dd ?
day_month	db ?,3

.code
start:
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
main proc
	mov eax, num
	add year, eax
	mov eax, my_day
	mov day, eax
   	mov day_month, al
	mov eax, offset my_name
	fn MessageBox,0,eax,"╚ь ",MB_OK
	mov eax, year
	fn MessageBox,0,str$(eax),"├юф Ёюцфхэш  + эюьхЁ т уЁєяях",MB_OK
	mov al, day_month[0]
	fn MessageBox,0,str$(eax),"─хэ№ Ёюцфхэш ",MB_OK
	mov al, day_month[1]
	fn MessageBox,0,str$(eax),"╠хё Ў Ёюцфхэш ",MB_OK
	invoke ExitProcess,0
main endp
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
end start