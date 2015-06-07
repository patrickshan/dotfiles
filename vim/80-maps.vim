" set leader for my map
" currently it's space
let mapleader="\<Space>"

" do syntax check
nmap <Leader>c :PymodeLint <CR>

" save file
nnoremap <Leader>w :w<CR>

" enter visual line mode with two Leaders
nmap <Leader><Leader> V
