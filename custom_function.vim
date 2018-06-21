" terminal mode
fu! OpenTerminal()
" open split windows on the topleft
    belowright split
" resize the height of terminal windows to 30
    resize 10
    :terminal
endf
