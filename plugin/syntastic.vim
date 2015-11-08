" pylint is slow. check manually by running :SyntasticCheck flake8 pylint
let g:syntastic_python_checkers = ['flake8']

let g:syntastic_enable_signs=0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": [],
        \ "passive_filetypes": [] }
" let g:syntastic_quiet_messages = { "level": "warnings" }

" let g:syntastic_python_flake8_args='--ignore=E231,E226,W391,E265,E251'
let g:syntastic_python_flake8_args='--ignore=E265,E226,E225,E221,E231,E501,E301,E302,E701,E203'
let g:syntastic_python_pylint_args='--extension-pkg-whitelist=numpy,autograd.numpy'
