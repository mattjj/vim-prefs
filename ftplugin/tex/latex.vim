imap <silent> <buffer> ]]  <Plug>LatexCloseCurEnv
imap <silent> <buffer> <F5> <Plug>LatexChangeEnv
vmap <silent> <buffer> <F7> <Plug>LatexWrapSelection
vmap <silent> <buffer> <S-F7> <Plug>LatexEnvWrapSelection
imap <silent> <buffer> [[ \begin{

" " these are fake text objects for 'latex paragraph'
" " select one with vlp, indent one with gqlp
" " TODO make it work with \[ and \]
" vmap lp ?^$\\|\([^\\]\\|^\)%\\|^\s*\(\\begin\\|\\end\\|\\label\\|\\item\\|\\\(sub\)*section\)?1o//-1\|:<C-U>noh\|gv$
" omap lp :normal Vlp

" setlocal spell

set formatoptions=tcqron

" let g:ycm_semantic_triggers = {
"             \   'tex' :  ['\ref{','\cite{','\eqref{','\citep{','\citet{'],
"             \ }

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
    \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'
    \ ]
