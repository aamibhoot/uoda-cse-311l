;CSE-311L [PIN]
;Experiment 1 : Displaying LED employing 8255A Interface
;Date: 18/05/2022

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
         mov al, 11111000b
         out portb, al
        
        ;dos exit
         mov ah, 4ch
         int 21h
main endp
end main