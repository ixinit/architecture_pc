.686
.model flat, stdcall 
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
    include \masm32\include\masm32rt.inc
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
.data
my_name db "",0
first_word db ?,0
.code
start:
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
	main proc
		mov eax, offset my_name
		fn MessageBox,0,eax,"╘рьшыш , шь  ш юЄўхёЄтю",MB_OK
		mov al, my_name[9]
            mov first_word, al
            mov eax, offset first_word
		fn MessageBox,0,eax,"╧хЁтр  сєътр шьхэш",MB_OK
            mov al, my_name[15]
            mov first_word, al
            mov eax, offset first_word
		fn MessageBox,0,eax,"╧хЁтр  сєътр юЄўхёЄтр",MB_OK
            mov my_name[8], "*"
            mov my_name[14], "*"
            mov eax, offset my_name
		fn MessageBox,0,eax,"╘рьшыш , шь  ш юЄўхёЄтю схч яЁюсхыют",MB_OK
		invoke ExitProcess,0                                     ; bye
	main endp
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
end start ;ё ¤Єюую ёыютр чрърэўштрхЄё  ъюф яЁюуЁрьь√