.model small
.stack 100h
.data
  wel db "Welcome$"
  heading db "Job Entry For$"
  bheading db "Web Developer$"
  details db "Details:$"
  names1 db "Name:$"
  names2 db 10,0,10 dup ('$')  ; Reserve space for 10 names, each of maximum length 10
  age1 db 10, "Age:$"
  age2 db 10,0,10 dup ('$')
  gender1 db 10, "Gender:$"
  gender2 db 10,0,10 dup ('$')
  quali1 db 10, "Qualification:$"
  quali2 db 10,0,10 dup ('$')
  exper1 db 10, "Years of Experience:$"
  exper2 db 10,0,10 dup ('$')
  eligible db 10, "Congratulation You have more than 1 year experience in web development, so you're selected$"
  noteligible db 10, "Sorry, you are not eligible for this job. Better Luck Next Time$"
  thanks db 10, "Thank You For Applying_________________________________$" 

.code

start:
  mov ax, @data
  mov ds, ax

 ;Page 0 Welcome Page
  mov ah, 00h     ; Set video mode
  mov al, 12h     ; 80x25 text mode with 8x16 font
  int 10h
  
  mov ah, 0Bh
  mov bh, 00h
  mov bl, 0001h  ; Set higher nibble of bl to 0001b for blue background
  int 10h
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 14    ; Row
  mov dl, 35    ; Column
  int 10h

  mov ah,09
  mov al,"W"
  mov bl,4
  mov cx,1
  int 10h
  
  mov ah,02
  mov bh,0
  mov dh,14
  mov dl,37
  int 10h
  
  mov ah,09
  mov al,"E"
  mov bl,6
  mov cx,1
  int 10h

  mov ah,02
  mov bh,0
  mov dh,14
  mov dl,39
  int 10h

  mov ah,09
  mov al,"L"
  mov bl,7
  mov cx,1
  int 10h
  
  mov ah,02
  mov bh,0
  mov dh,14
  mov dl,41
  int 10h
  
  mov ah,09
  mov al,"C"
  mov bl,8
  mov cx,1
  int 10h

  mov ah,02
  mov bh,0
  mov dh,14
  mov dl,43
  int 10h

  mov ah,09
  mov al,"O"
  mov bl,6
  mov cx,1
  int 10h

  mov ah,02
  mov bh,0
  mov dh,14
  mov dl,45
  int 10H
  
  mov ah,09
  mov al,"M"
  mov bl,3
  mov cx,1
  int 10h

  mov ah,02
  mov bh,0
  mov dh,14
  mov dl,47
  int 10H

  mov ah,09
  mov al,"E"
  mov bl,4
  mov cx,1 
  int 10h

  mov ah,0ch     ;for box first line in welcome page
  mov al,1
  mov cx,200
  mov dx,200
 
  L1:
  int 10h
  inc cx
  cmp cx,480
  jle L1
  
  mov ah,0ch     ;for box second line in welcome page
  mov al,1
  mov cx,200
  mov dx,200
 
  L2:
  int 10h
  inc dx
  cmp dx,260
  jle L2
  
  
  mov ah,0ch     ;for box third line in welcome page
  mov al,1
  mov cx,200
  mov dx,260
 
  L3:
  int 10h
  inc cx
  cmp cx,480
  jle L3
  
  mov ah,0ch     ;for box fourth line in welcome page
  mov al,1
  mov cx,480
  mov dx,200
 
  L4:
  int 10h
  inc dx
  cmp dx,260
  jle L4
 
  mov ah, 01h    ; Wait for keypress
  int 21h

  mov ah, 00h    ; Set video mode (to clear the screen)
  mov al, 03h    ; 80x25 text mode
  int 10h
  
 ;Page 1 Heading Page
  mov ah, 02    ; Set video page
  mov al, 01    ; Switch to page 1
  int 10h
  
  mov ah, 00h    ; Set video mode
  mov al, 12h    ; 80x25 text mode with 8x16 font
  int 10h
  
  mov ah, 0Bh
  mov bh, 00h
  mov bl, 6  
  int 10h

  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 13    ; Row
  mov dl, 36    ; Column
  int 10h

  mov ah, 09h    ; Display string
  mov dx, offset heading
  int 21h
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 15    ; Row
  mov dl, 36    ; Column
  int 10h

  mov ah, 09h    ; Display string
  mov dx, offset bheading
  int 21h

  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 13    ; Row
  mov dl, 24    ; Column
  int 10h
  
  mov ah,0ch     ;for box first line in second page
  mov al,4
  mov cx,200
  mov dx,200
 
  L5:
  int 10h
  inc cx
  cmp cx,480
  jle L5
  
  mov ah,0ch     ;for box second line in second page
  mov al,4
  mov cx,200
  mov dx,200
 
  L6:
  int 10h
  inc dx
  cmp dx,260
  jle L6
  
  
  mov ah,0ch     ;for box third line in second page
  mov al,4
  mov cx,200
  mov dx,260
 
  L7:
  int 10h
  inc cx
  cmp cx,480
  jle L7
  
  mov ah,0ch     ;for box fourth line in second page
  mov al,4
  mov cx,480
  mov dx,200
 
  L8:
  int 10h
  inc dx
  cmp dx,260
  jle L8 
  
  mov ah, 01h    ; Wait for keypress
  int 21h
  
  mov ah, 00h    ; Set video mode (to clear the screen)
  mov al, 03h    ; 80x25 text mode
  int 10h
  
  ;Page 2 Input Page
  mov ah, 02    ; Set video page
  mov al, 02    ; Switch to page 2
  int 10h
  
  mov ah, 00h    ; Set video mode
  mov al, 12h    ; 80x25 text mode with 8x16 font
  int 10h
  
  mov ah, 0Bh
  mov bh, 00h
  mov bl, 3  
  int 10h
  
  mov ah, 02
  mov bh,0
  mov dh,4
  mov dl, 35
  int 10h
  
  mov ah,09h
  mov dx,offset details
  int 21h
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 13    ; Row
  mov dl, 24    ; Column
  int 10h
  
  mov ah,0ch     ;for box first line
  mov al,5
  mov cx,100
  mov dx,40
 
  L9:
  int 10h
  inc cx
  cmp cx,540
  jle L9
  
  mov ah,0ch     ;for box second line
  mov al,5
  mov cx,100
  mov dx,40
 
  L10:
  int 10h
  inc dx
  cmp dx,400
  jle L10
  
  mov ah,0ch     ;for box first line
  mov al,5
  mov cx,540
  mov dx,40
 
  L11:
  int 10h
  inc dx
  cmp dx,400
  jle L11

  mov ah,0ch     ;for box fourth line 
  mov al,5
  mov cx,100
  mov dx,400
 
  L12:
  int 10h
  inc cx
  cmp cx,540
  jle L12
  
  mov ah,0ch     ;for details var line 
  mov al,5
  mov cx,210
  mov dx,90
 
  L13:
  int 10h
  inc cx
  cmp cx,420
  jle L13

  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 9    ; Row
  mov dl, 20    ; Column
  int 10h
  
  mov ah, 09h    ; Display string
  mov dx, offset names1
  int 21h
  
  mov ah,0ch     ;for names var line 
  mov al,5
  mov cx,160
  mov dx,170
 
  L14:
  int 10h
  inc cx
  cmp cx,460
  jle L14
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 9    ; Row 
  mov dl, 28    ; Column
  int 10h
 
  mov ah, 0Ah    ; Read string
  mov dx, offset names2  ; Offset by 2 bytes to skip the count byte
  mov cx, 10   ; Maximum input length
  int 21h
   
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 11    ; Row (12)
  mov dl, 20    ; Column (12)
  int 10h
  
  mov ah, 09h    ; Display string
  mov dx, offset age1
  int 21h
  
  mov ah,0ch     ;for age var line 
  mov al,5
  mov cx,160
  mov dx,220
 
  L15:
  int 10h
  inc cx
  cmp cx,460
  jle L15
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 12    ; Row 
  mov dl, 28    ; Column
  int 10h

  mov ah, 0Ah    ; Read string
  mov dx, offset age2  ; Offset by 2 bytes to skip the count byte
  mov cx, 10   ; Maximum input length
  int 21h
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 14    ; Row (12)
  mov dl, 20    ; Column (12)
  int 10h
  
  mov ah, 09h    ; Display string
  mov dx, offset gender1
  int 21h
  
  mov ah,0ch     ;for gender var line 
  mov al,5
  mov cx,160
  mov dx,270
 
  L16:
  int 10h
  inc cx
  cmp cx,460
  jle L16
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 15    ; Row 
  mov dl, 30    ; Column
  int 10h

  mov ah, 0Ah    ; Read string
  mov dx, offset gender2  ; Offset by 2 bytes to skip the count byte
  mov cx, 10   ; Maximum input length
  int 21h
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 17    ; Row
  mov dl, 20    ; Column
  int 10h
  
  mov ah, 09h    ; Display string
  mov dx, offset quali1
  int 21h
  
  mov ah,0ch     ;for quali var line 
  mov al,5
  mov cx,160
  mov dx,320
 
  L17:
  int 10h
  inc cx
  cmp cx,460
  jle L17
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 18   ; Row 
  mov dl, 37    ; Column
  int 10h

  mov ah, 0Ah    ; Read string
  mov dx, offset quali2  ; Offset by 2 bytes to skip the count byte
  mov cx, 10   ; Maximum input length
  int 21h
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 20   ; Row 
  mov dl, 20    ; Column
  int 10h
  
  mov ah, 09h    ; Display string
  mov dx, offset exper1
  int 21h
  
  mov ah,0ch     ;for quali var line 
  mov al,5
  mov cx,160
  mov dx,370
 
  L18:
  int 10h
  inc cx
  cmp cx,460
  jle L18
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 21   ; Row 
  mov dl, 44    ; Column
  int 10h

  mov ah, 0Ah    ; Read string
  mov dx, offset exper2  ; Offset by 2 bytes to skip the count byte
  mov cx, 10   ; Maximum input length
  int 21h
  mov ah, 01
  int 21h
  
  sub al,'0'
  
   cmp al, 1
   call eli
    
   eli proc
   mov ah, 02    ; Set cursor position
   mov bh, 0     ; Page number
   mov dh, 26  ; Row 
   mov dl, 2    ; Column
   int 10h

   mov ah, 09
   mov dx, offset eligible
   int 21h
   eli endP
   
   mov ah, 01h    ; Wait for keypress
   int 21h
  
   mov ah, 00h    ; Set video mode (to clear the screen)
   mov al, 03h    ; 80x25 text mode
   int 10h

  ;Page 3 Heading Page
  mov ah, 05    ; Set video page
  mov al, 03    ; Switch to page 3
  int 10h
  
  mov ah, 00h     ; Set video mode
  mov al, 12h     ; 80x25 text mode with 8x16 font
  int 10h
  
  mov ah, 0Bh
  mov bh, 00h
  mov bl, 8  ; Set higher nibble of bl to 0001b for blue background
  int 10h
  
  mov ah, 02    ; Set cursor position
  mov bh, 0     ; Page number
  mov dh, 14    ; Row
  mov dl, 50    ; Column
  int 10h

  mov ah, 09h    ; Display string
  mov dx, offset thanks
  int 21h
  
  mov ah, 01h    ; Wait for keypress
  int 21h
  
  mov ah, 00h    ; Set video mode (to clear the screen)
  mov al, 03h    ; 80x25 text mode
  int 10h

  mov ah, 4ch    ; Terminate program
  int 21h

end start
