function! UpdateMarkdown()
    silent! w ! curl -X PUT -T - http://localhost:8090/ &>/dev/null &
endfunction
function! OpenMarkdown()
    let b:last_number_of_changes = ""
endfunction
function! CloseMarkdown()
    silent! ! curl -s -X DELETE http://localhost:8090/ &>/dev/null &
endfunction

" Only README.md is recognized by vim as type markdown. Do this to make ALL .md files markdown
autocmd BufWinEnter *.{md,mkd,mkdn,mdown,mark*} silent setf markdown

autocmd BufWritePost *.{md,mkd,mkdn,mdown,mark*} silent call UpdateMarkdown()
autocmd BufWinLeave *.{md,mkd,mkdn,mdown,mark*} silent call CloseMarkdown()
autocmd BufWinEnter *.{md,mkd,mkdn,mdown,mark*} silent call OpenMarkdown()

" set makeprg=mdown\ %\ \\\|bcat
" nmap <leader>ll :silent make<CR>
" function SaveHTML(...)
"     if a:0 == 1
"         execute '!mdown ' . @% . ' > ' . a:1
"     else
"         let filename=expand('%:r') . '.html'
"         if filereadable(filename)
"             " TODO ask if we want to overwrite it
"             " TODO also add exclamation option
"             echo "file already exists!"
"         else
"             execute '!mdown ' . @% . ' > ' . expand('%:r') . '.html'
"         endif
"     endif
" endfun
" command -nargs=? SaveHTML call SaveHTML(<f-args>)
