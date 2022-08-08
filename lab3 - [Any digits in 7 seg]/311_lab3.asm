;CSE-311L [PIN]
;Experiment 3 : Displaying any char/ number in 7 seg
;Date: 09/06/2022

.model small
.stack 100h
.data
    porta  equ 19h
    portb  equ 1bh
    portc  equ 1dh
    c_port equ 1fh              ;Control Port

.code
main proc
           mov ax, @data        ;Data segment initialization
           mov dx, ax
           mov al, 10000000b
           out c_port, al
    ; main code starts
    ; NOTE: 7 seg is ACTIVE LOW
    ;        gfedcab
           mov al, 10011001b    ; It will show 4
           out porta, al        ; 7 seg outputs at port a

    ;dos exit
           mov ah, 4ch
           int 21h
main endp
end main