include \masm32\include\masm32rt.inc 
; «««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««
.data
    varl DD ? ;место для перменной длины DD
.code

start:						; entry point
	call main				
	exit
; «««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««

main proc
      ; 1) испытание MOV и ADD команд
	
	mov eax, 100       ; копируем число 100 в регистр EAX     
	mov ecx, 250       ; копируем число 250 в регистр ECX
	add ecx, eax       ; прибавляем к значению регистра ECX то, что лежит в EAX
	
	print str$(ecx)
	print chr$(13,10,13,10)  ; 13 и 10 возврат каретки и перенос строки
	

      ; 2) ввод десятичного числа с клавиатуры и последующее сравнение с числм 100
	mov var1, sval(input("Enter a number: "))
	
	cmp var1, 100  ; сравнение чисел, дальше поверяеются флаги (sf, zf)  
	je equal    ; ==   j - прыжок e - эквивалентно вместе je, если непонятно что это, дальше аналогично
	jg bigger   ; >
	jl smaller  ; <

	equal:
	  print chr$("The number you entered is 100", 13, 10)
	  jmp over  ; прыжок для звершения, а то будет сравнивать > потом <
	
	bigger:
	  print chr$("The number you entered is greater than 100",13, 10)
	  jmp over
	  
	smaller:
	  print chr$("The number you entered is less than 100", 13, 10)
	
	over:
	  ret

main endp

; «««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««
end start					; конец программы