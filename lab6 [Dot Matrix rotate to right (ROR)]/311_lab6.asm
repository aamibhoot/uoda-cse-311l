;CSE-311L [PIN]
;Experiment 6 : Dot Matrix right to left sequential orientations [Active Low (0)]
;Date: 22/07/2022

.model small
.stack 100h
.data
     porta  equ 18h     ; port a for orange led
     portb  equ 1ah     ; port b for green led
     portc  equ 1ch
     c_port equ 1eh     ;Control Port

.code
main proc
          mov  ax, @data         ;Data segment initialization
          mov  dx, ax
          mov  al, 10000000b
          out  c_port, al

     ;main code starts
          mov  al, 11111111b
          out  portc, al
          mov  al, 11111111b
          out  portb, al
          mov  al, 11111110b
         
     ;loop
     l1:  
          mov  cx, 30h           ;30h = time
         
     l2:  
          out  porta, al
          loop l2
          rol  al, 1h
          jmp  l1

     ;dos exit
          mov  ah, 4ch
          int  21h

main endp
end main