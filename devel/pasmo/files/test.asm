; https://chuntey.wordpress.com/2012/12/18/how-to-write-zx-spectrum-games-chapter-1/
org 30000

main
       ld a,2          ; 2 = upper screen.
       call 5633       ; open channel.
       ld a,21         ; row 21 = bottom of screen.
       ld (xcoord),a   ; set initial x coordinate.
loop   call setxy      ; set up our x/y coords.
       ld a,'*'        ; want an asterisk here.
       rst 16          ; display it.
       call delay      ; want a delay.
       call setxy      ; set up our x/y coords.
       ld a,32         ; ASCII code for space.
       rst 16          ; delete old asterisk.
       call setxy      ; set up our x/y coords.
       ld hl,xcoord    ; vertical position.
       dec (hl)        ; move it up one line.
       ld a,(xcoord)   ; where is it now?
       cp 255          ; past top of screen yet?
       jr nz,loop      ; no, carry on.
       ret
delay  ld b,10         ; length of delay.
delay0 halt            ; wait for an interrupt.
       djnz delay0     ; loop.
       ret             ; return.
setxy  ld a,22         ; ASCII control code for AT.
       rst 16          ; print it.
       ld a,(xcoord)   ; vertical position.
       rst 16          ; print it.
       ld a,(ycoord)   ; y coordinate.
       rst 16          ; print it.
       ret

xcoord defb 0
ycoord defb 15

end main
