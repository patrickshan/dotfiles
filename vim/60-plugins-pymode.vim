" python-mode configuration
" max line length
let g:pymode_options_max_line_length = 100

" code checkers configuration for pymode
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']

" set checkers options from pymode variable
let g:pymode_lint_options_pep8 =  {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_lint_options_pylint = {'max-line-length': g:pymode_options_max_line_length}

let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0  " disable autocomplete from python-mode
let g:pymode_indent = 0 " use vim-python-pep8-indent instead

" let pymode ignore some of the errors and all the warnings
" let g:pymode_lint_ignore = "E501,W"
" By example you disable all warnings starting from 'W', but want to see
" warning 'W0011' and warning 'W430'
"  let g:pymode_lint_select = "E501,W0011,W430"
