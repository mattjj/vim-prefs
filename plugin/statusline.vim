" set laststatus=2            " Always show statusline, even if only 1 window.
" set statusline=
" set statusline +=%1*\ %n\ %*            "buffer number
" set statusline +=%5*%{&ff}%*            "file format
" set statusline +=%3*%y%*                "file type
" set statusline +=%4*\ %<%F%*            "full path
" set statusline +=%2*%m%*                "modified flag
" set statusline +=%1*%=%5l%*             "current line
" set statusline +=%2*/%L%*               "total lines
" set statusline +=%1*%4v\ %*             "virtual column number
" set statusline=%n\ [%l,%v,\ %P%M]\ %f\ %{tagbar#currenttag('%s','','fs')}%=%r%h%w\ (%{&ff})\ %{fugitive#statusline()}


