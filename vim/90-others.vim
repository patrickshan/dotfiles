set mouse=v                   " Enable mouse in visual mode. You can use mouse change
                              " windows size when using vimdiff or -O/o
set noerrorbells              " disable error bells
set vb t_vb=                  " Disable all bells

if &diff                            " only for diff mode/vimdiff
      set diffopt=filler,context:10 " filler is default and increase context lines
endif
