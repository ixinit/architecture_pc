.686
.model flat, stdcall
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
    include \masm32\include\masm32rt.inc
; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
.data
  data_8      db -3
  data_16     dw ?
.code
  start:
       mov al, data_8
       sub ah, ah
       dec ah
       mov data_16, ax
       ret 
end start