let g:airline_powerline_fonts = 1
"
function! AirlineThemePatch(palette)
  let a:palette.normal.airline_a = [ '#ffffff', '#268bd2', 255, 33 ]
  let a:palette.normal.airline_z = [ '#ffffff', '#268bd2', 255, 33 ]
endfunction
let g:airline_theme_patch_func = 'AirlineThemePatch'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#flags = 'fs'
let g:airline#extensions#branch#enabled = 1

" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

 if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.linenr = ''
