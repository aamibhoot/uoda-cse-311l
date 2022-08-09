	;CSE - 311L [PIN]
	;Experiment 4 : Displaying all digits in 7 seg
	;Date: 03 / 08 / 2022
	
	.model small
	.stack 100h
	.data
     porta  equ 19h
     portb  equ 1bh
     portc  equ 1dh
     c_port equ 1fh     ;Control Port
	
	.code
main proc
          mov  ax, @data         ;Data segment initialization
          mov  dx, ax
          mov  al, 10000000b
          out  c_port, al
     ; main code starts
     ;loop start
     l0:  
          mov  cx, 30h           ;30h = time
	
     ;Display 0
     l1:  
          mov  al, 11000000b
          out  porta, al
          loop l1
          mov  cx, 30h           ;30h = time
     l2:                         ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l2
     ;Display 1
     l3:  
          mov  al, 11111001b
          out  porta, al
          loop l3
          mov  cx, 30h           ;30h = time
     l4:                         ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l4
     ;Display 2
     l5:  
          mov  al, 10100100b
          out  porta, al
          loop l5
          mov  cx, 30h           ;30h = time
     l6:                         ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l6
	
     ;Display 3
     l7:  
          mov  al, 10110000b
          out  porta, al
          loop l7
          mov  cx, 30h           ;30h = time
     l8:                         ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l8
	
     ;Display 4
     l9:  
          mov  al, 10011001b
          out  porta, al
          loop l9
          mov  cx, 30h           ;30h = time
     l10:                        ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l10
	
     ;Display 5
     l11: 
          mov  al, 10010010b
          out  porta, al
          loop l11
          mov  cx, 30h           ;30h = time
     l12:                        ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l12
	
     ;Display 6
     l13: 
          mov  al, 10000010b
          out  porta, al
          loop l13
          mov  cx, 30h           ;30h = time
     l14:                        ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l14
	
     ;Display 7
     l15: 
          mov  al, 11111000b
          out  porta, al
          loop l15
          mov  cx, 30h           ;30h = time
     l16:                        ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l16
	
     ;Display 8
     l17: 
          mov  al, 10000000b
          out  porta, al
          loop l17
          mov  cx, 30h           ;30h = time
     l18:                        ;Deactive port b
          mov  al, 11111111b
          out  portb, al
          loop l18
	
     ;Display 9
     l19: 
          mov  al, 10010000b
          out  porta, al
          loop l19
          mov  cx, 30h           ;30h = time
          jmp  l0
	
     ;dos exit
          mov  ah, 4ch
          int  21h
main endp
	end main
