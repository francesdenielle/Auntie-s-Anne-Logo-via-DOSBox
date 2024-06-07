code segment
	assume cs:code; ds:code
	org 100h

begin:

	mov ax,0600h ; AH=06 (scroll), AL=00 (fullscreen)
	mov bh,1FH ; 1 = Blue Background, F = High Intensity White Text 
	mov cx,0000H ; CH=00 (row), CL=00 (column)
	mov dx,3E63h ; DH=10h (row), DL=2F (column)
	int 10h	 ; call interrupt service

;first-------------------------------------
	
	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,01h	; row = 12D
	mov dl,24h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0009 ; 9 YELLOW pixels
	int 10h

;second-------------------------------------
	
	mov ah,02h	; request char display ; change color
	mov bh,00h	; page 0
	mov dh,02h	; row = 12D
	mov dl,23h	; column = 40D
	int 10h
	
	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0001 ; 1 YELLOW pixel
	int 10h

;-9 spaces

	mov ah,02h	; request char display ; change color
	mov bh,00h	; page 0
	mov dh,02h	; row = 12D
	mov dl,2Dh	; column = 40D
	int 10h
	
	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0001 ; 1 YELLOW pixel
	int 10h

;third-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,03h	; row = 12D
	mov dl,24h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0009 ; 9 YELLOW pixels
	int 10h
	
;fourth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,05h	; row = 12D
	mov dl,1Eh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0002 ; 2 WHITE pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,05h	; row = 12D
	mov dl,20h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-7 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,05h	; row = 12D
	mov dl,2Bh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0003 ; 3 WHITE pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,05h	; row = 12D
	mov dl,2Dh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;fifth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,06h	; row = 12D
	mov dl,1Ch	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0012 ; 12 YELLOW pixels
	int 10h

;-2 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,06h	; row = 12D
	mov dl,2Ah	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0010 ; 10 YELLOW pixels
	int 10h

;sixth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,07h	; row = 12D
	mov dl,1Ch	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-4 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,07h	; row = 12D
	mov dl,24h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0002 ; 2 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,07h	; row = 12D
	mov dl,26h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0004 ; 4 BLACK pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,07h	; row = 12D
	mov dl,2Ah	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-2 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,07h	; row = 12D
	mov dl,30h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0002 ; 2 WHITE pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,07h	; row = 12D
	mov dl,32h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;seventh-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,08h	; row = 12D
	mov dl,1Ah	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-8 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,08h	; row = 12D
	mov dl,26h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,08h	; row = 12D
	mov dl,28h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-6 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,08h	; row = 12D
	mov dl,32h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;eighth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,09h	; row = 12D
	mov dl,1Ah	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-8 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,09h	; row = 12D
	mov dl,26h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-8 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,09h	; row = 12D
	mov dl,32h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0002 ; 2 WHITE pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,09h	; row = 12D
	mov dl,34h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0002 ; 2 YELLOW pixels
	int 10h

;ninth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ah	; row = 12D
	mov dl,1Ah	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-8 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ah	; row = 12D
	mov dl,26h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-8 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ah	; row = 12D
	mov dl,32h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0002 ; 2 WHITE pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ah	; row = 12D
	mov dl,34h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0002 ; 2 YELLOW pixels
	int 10h

;tenth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Bh	; row = 12D
	mov dl,1Ah	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Bh	; row = 12D
	mov dl,1Eh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0002 ; 2 WHITE pixels
	int 10h

;-4 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Bh	; row = 12D
	mov dl,24h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0002 ; 2 WHITE pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Bh	; row = 12D
	mov dl,26h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0002 ; 2 YELLOW pixels
	int 10h

;-2 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Bh	; row = 12D
	mov dl,2Ah	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0002 ; 2 YELLOW pixels
	int 10h

;-6 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Bh	; row = 12D
	mov dl,32h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h
	
;eleventh-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ch	; row = 12D
	mov dl,1Ch	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ch	; row = 12D
	mov dl,20h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

;-2 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ch	; row = 12D
	mov dl,24h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-2 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ch	; row = 12D
	mov dl,2Ah	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-2 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ch	; row = 12D
	mov dl,30h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Ch	; row = 12D
	mov dl,34h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0002 ; 2 WHITE pixels
	int 10h

;twelfth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Dh	; row = 12D
	mov dl,1Eh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0002 ; 2 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Dh	; row = 12D
	mov dl,20h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Dh	; row = 12D
	mov dl,22h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-6 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Dh	; row = 12D
	mov dl,2Ch	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0002 ; 2 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Dh	; row = 12D
	mov dl,2Eh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Dh	; row = 12D
	mov dl,30h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;thirteenth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Eh	; row = 12D
	mov dl,20h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Eh	; row = 12D
	mov dl,22h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Eh	; row = 12D
	mov dl,26h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

;-4 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Eh	; row = 12D
	mov dl,2Ch	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Eh	; row = 12D
	mov dl,30h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

;fourteenth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Fh	; row = 12D
	mov dl,20h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h
	
	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Fh	; row = 12D
	mov dl,24h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Fh	; row = 12D
	mov dl,26h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0006 ; 6 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Fh	; row = 12D
	mov dl,2Ch	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 00h
	mov cx, 0002 ; 2 BLACK pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,0Fh	; row = 12D
	mov dl,2Eh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;fifteenth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,10h	; row = 12D
	mov dl,1Eh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;-4 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,10h	; row = 12D
	mov dl,26h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0006 ; 6 YELLOW pixels
	int 10h

;-2 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,10h	; row = 12D
	mov dl,2Eh	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,10h	; row = 12D
	mov dl,32h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0001 ; 1 WHITE pixel
	int 10h

;sixteenth-------------------------------------

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,11h	; row = 12D
	mov dl,1Ch	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h	

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,11h	; row = 12D
	mov dl,20h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Fh
	mov cx, 0002 ; 2 WHITE pixels
	int 10h

;-14 spaces

	mov ah,02h	; request char display
	mov bh,00h	; page 0
	mov dh,11h	; row = 12D
	mov dl,30h	; column = 40D
	int 10h

	mov ah, 09h
	mov al, 219D
	mov bh, 00h ; page 0
	mov bl, 0Eh
	mov cx, 0004 ; 4 YELLOW pixels
	int 10h

;---------------------------------------------

	int 20h

code ends
	end begin
