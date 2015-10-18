" set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

let python_highlight_all = 1
set softtabstop=4

" let g:syntastic_python_flake8_args='--ignore=E231,E226,W391,E265,E251'
let g:syntastic_python_flake8_args='--ignore=E265,E226,E225,E221,E231'

" with smartindent, need this to fix comment indenting, but filetype
" indent on is much better
if &smartindent
    inoremap <buffer> # X#
endif
set commentstring=\#\%s
set comments-=fb:-
set comments+=fb:#

" Wrap at 80 chars for comments.
set formatoptions=cq textwidth=80 foldignore= wildignore+=*.py[co]

" `gf` jumps to the filename under the cursor.  Point at an import statement
" and jump to it!
if has("python")
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF
endif

"" makes pyflakes not use quickfix, decent fix for using both pylint and
"" pyflakes for now: pylint gets quickfix window to itself and only gets run
"" when called, while pyflakes does highlighting.
let g:pyflakes_use_quickfix = 0

"nmap <buffer> <Leader>l :Pylint<CR> :copen <CR>
"set grepprg=grep\ -n

set foldnestmax=2
set fdm=indent
