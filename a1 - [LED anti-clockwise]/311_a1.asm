;CSE-311L [PIN]
;Assignment 1 : Displaying LED anti-clockwise employing 8255A Interface
;Date: 02/06/2022

.model small
.stack 100h
.data
    porta  equ 19h  
    portb  equ 1bh ;Default OUTPUT ports for LED
    portc  equ 1dh
    c_port equ 1fh ;Control Port

.code
main proc
         mov ax, @data ;Data segment initialization
         mov dx, ax
         mov al, 10000000b
         out c_port, AL
        
        ;Experiment
        l9:
        mov cx, 70h
        ; LED matrix
        ; 1     2
        ; 3     4
        ;LED 1
        l1: 
         mov al, 11110001b
         out portb, al
         loop l1
         mov cx, 70h
        l2:
         out portb, al
         loop l2
        
        ;LED 3
        l3: 
         mov al, 11110100b
         out portb, al
         loop l3
         mov cx, 70h
        l4:
         out portb, al
         loop l4
        
        ;LED 4
        l5: 
         mov al, 11111000b
         out portb, al
         loop l5
         mov cx, 70h
        l6:
         out portb, al
         loop l6
        
        ;LED 2
        l7: 
         mov al, 11110010b
         out portb, al
         loop l7
         mov cx, 70h
        l8:
         out portb, al
         loop l8

        ;dos exit
         mov ah, 4ch
         int 21h
main endp
end main