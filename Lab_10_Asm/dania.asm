.386
.model flat, stdcall
; лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл               ┬рЁшрэЄ 3
include \masm32\include\masm32rt.inc
; лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
.data
mass dd 2 ,3 ,4 ,6 ,1 ,7 ,
        9 ,5 ,3 ,8 ,3 ,2 
.code
start:
; лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
main proc

mov eax, mass
lea esi, mass
mov ebp, 0; ╩юышўхёЄтю ўшёхы ъюЄюЁ√х ъЁрЄэ√ 3
mov cx, 12; ╤ў╕Єўшъ Ўшъыр
mov edx, 3; ═р° чэрьхэрЄхы№ 

cycle:
div ebx
cmp edx, 0 ; CЁртэштрхь юёЄрЄюъ ё эєыхь
je salo

salo:
inc ebp ; ─юсрты хь 1 ъ ъюышўхёЄтє ўшёхы
loop cycle

fn MessageBox,0,str$(ebp),"╩юышўхёЄтю ўшёхы ъЁрЄэ√ї 3",MB_OK
invoke ExitProcess,0

main endp

; лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
end start