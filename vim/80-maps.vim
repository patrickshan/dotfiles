" set leader for my map
" currently it's space
let mapleader="\<Space>"

" Mode letters:
"
" n: normal only
" v: visual and select
" o: operator-pending
" x: visual only
" s: select only
" i: insert
" c: command-line
" l: insert, command-line, regexp-search (and others. Collectively called 'Lang-Arg' pseudo-mode)

" map/remap vs noremap
" they are recursive and non-recursive versions of the various mapping commands
" noremap won't recursivly map/parse the right part of map formula

" File modification related
" enter paste mode
nnoremap <Leader>p :set paste <CR>
" save file
nnoremap <Leader>s :w <CR>

" do syntax check
nmap <Leader>c :PymodeLint <CR>

" map move between viewports
nmap <Leader>w <C-w>
nmap <Leader>u :wincmd k <CR>
nmap <Leader>d :wincmd j <CR>

" enter visual mode blockwise
nmap <Leader>v <C-v>
" enter visual mode linewise
nmap <Leader><Leader> V
