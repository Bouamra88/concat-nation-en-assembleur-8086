org 0x100

section .data

message1: db "hello",0
message2: db "+ word",0
msg: db "chaine1 + chaine2: ","$"
section .text
mov dx,msg
mov ah,0x9
int 0x21
mov si,message1
saisie:
mov dl,[si]
mov ah,0x2
int 0x21
cmp dl,0
je saisie2
inc si
jmp saisie
int 0x21
saisie2:
mov si,message2
saisie3:
mov dl,[si]
mov ah,0x2
int 0x21
cmp dl,0
je fin
inc si
jmp saisie3
int 0x21
fin:
ret