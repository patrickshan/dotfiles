" set no compatible with vi
set nocompatible

filetype off                  " required by vundle while you can enable
                              " it after defining vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" other plugins
" solarized color scheme plugin by default vundle will use github repo
Plugin 'altercation/vim-colors-solarized'
" syntastic syntax checking plugin
Plugin 'scrooloose/syntastic'
" python-mode plugin
Plugin 'klen/python-mode'
" YouCompleteMe plugin which can automatically do code-completion
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set list                      " list some special characters
set number                    " Display line numbers
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set colorcolumn=128	          " Color column limit
set ruler                     " show the cusor position all the time 
set cursorline                " display a line to indicate cursor location
"set cursorcolumn             " highlight cursor column
set linebreak                 " don't wrap text in the middle of a word
set autoindent                " always set autoindenting on
set smartindent               " use smart indent if there is no indent file
set noerrorbells              " disable error bells
set vb t_vb=                  " Disable all bells


"expand tab with 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

"###############################
"#color theme related settings
"###############################
"
set background=dark
"solarized scheme
colorscheme solarized

"###############################
"#search and patterns
"###############################
set ignorecase              " Default to using case insensitive searches
set smartcase               " unless uppercase letters are used in the regex
set smarttab                " Handle tabs more intelligently
set hlsearch                " Highlight searches by default
set incsearch               " Incrementally search while typing a /regex

set confirm                 " Y-N-C prompt if closing with unsaved changes

"###############################
"# code related
"###############################
"set the code fold level
set foldlevelstart=10
"set nofoldenable           " disable auto fold