if has('persistent_undo')
    " set up undo dir to store all the undo history
    set undodir=~/.undodir/
    " create undo dir
    silent call system('mkdir -p ' . &undodir)
    " enable persistent undo
    set undofile
endif
