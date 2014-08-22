let g:ycm_filetype_blacklist = {
            \ 'markdown' : 1,
            \ 'text' : 1,
            \ 'scheme' : 1,
            \ 'tex' : 1,
            \}
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" NOTE: may need to set let g:ycm_path_to_python_interpreter
" I put that in ~/.vimrc_specific, which my vimrc sources
