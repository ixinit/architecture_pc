include \masm32\include\masm32rt.inc 
; �������������������������������������������������������������������������
.data
    varl DD ? ;����� ��� ��������� ����� DD
.code

start:						; entry point
	call main				
	exit
; �������������������������������������������������������������������������

main proc
      ; 1) ��������� MOV � ADD ������
	
	mov eax, 100       ; �������� ����� 100 � ������� EAX     
	mov ecx, 250       ; �������� ����� 250 � ������� ECX
	add ecx, eax       ; ���������� � �������� �������� ECX ��, ��� ����� � EAX
	
	print str$(ecx)
	print chr$(13,10,13,10)  ; 13 � 10 ������� ������� � ������� ������
	

      ; 2) ���� ����������� ����� � ���������� � ����������� ��������� � ����� 100
	mov var1, sval(input("Enter a number: "))
	
	cmp var1, 100  ; ��������� �����, ������ ����������� ����� (sf, zf)  
	je equal    ; ==   j - ������ e - ������������ ������ je, ���� ��������� ��� ���, ������ ����������
	jg bigger   ; >
	jl smaller  ; <

	equal:
	  print chr$("The number you entered is 100", 13, 10)
	  jmp over  ; ������ ��� ���������, � �� ����� ���������� > ����� <
	
	bigger:
	  print chr$("The number you entered is greater than 100",13, 10)
	  jmp over
	  
	smaller:
	  print chr$("The number you entered is less than 100", 13, 10)
	
	over:
	  ret

main endp

; �������������������������������������������������������������������������
end start					; ����� ���������