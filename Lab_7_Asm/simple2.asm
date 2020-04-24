.686
.model flat, stdcall
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
    include \masm32\include\masm32rt.inc
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
.data
message	db '▀ яЁш°хы ъ Єхсх ё яЁштхЄюь!!!',0
perem_1	dd 0f1h
perem_2	dd 17fh
perem_3	dd 0fah
mas	db 10 dup(' ')
pole_1	db 5 dup(?)
adr	dd perem_3
fin	db '╩юэхЎ Ёрчфхыр фрээ√ї яЁюуЁрьь√'

.code
start:
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
main proc
	mov esi,offset message 
	fn MessageBox,0,esi,"╟рэрўхэшх яхЁхьхээющ ярь Єш",MB_OK
	mov eax, perem_1
	fn MessageBox,0,str$(eax),"╟эрўхэшх ЁхушёЄЁр",MB_OK
	mov edx, 12345 
	fn MessageBox,0,str$(edx),"╟эрўхэшх ЁхушёЄЁр",MB_OK
	fn MessageBox,0,str$(perem_2),"╟рэрўхэшх яхЁхьхээющ ярь Єш",MB_OK
	invoke ExitProcess,0
main endp
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
end start