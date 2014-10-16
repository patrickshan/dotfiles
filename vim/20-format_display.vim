syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set list                      " list some special characters
set number                    " Display line numbers
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set colorcolumn=128           " Color column limit
set ruler                     " show the cusor position all the time 
set cursorline                " display a line to indicate cursor location
"set cursorcolumn             " highlight cursor column
set linebreak                 " don't wrap text in the middle of a word
set autoindent                " always set autoindenting on
set smartindent               " use smart indent if there is no indent file

"expand tab with 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

"###############################
"#color theme related settings
"###############################
"
set background=dark

"###############################
""# code folding related
"###############################
""set the code fold level
set foldlevelstart=10
"set nofoldenable           " disable auto fold
"
" set color to 256 if it's not in gui
if !has('gui_running')
      set t_Co=256
endif
