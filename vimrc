" enable pathogen plugin
execute pathogen#infect()

syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set background=dark           " We are using dark background in vim
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set colorcolumn=128	      " Color column limit

"expand tab with 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4
