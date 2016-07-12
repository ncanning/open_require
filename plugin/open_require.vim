command! OpenRequire :call s:OpenRequire()

let s:filename=fnamemodify(resolve(expand('<sfile>:p')), ':h:h') . '/script/open_require.rb'

function! s:OpenRequire()
    let line=getline('.')
    let command='ruby ' . s:filename . ' "' . line . '"'
    let filename=system(command)
    if filereadable(filename)
        execute "open " . filename
    else
        echoerr "file " . filename . " was not found."
    endif
endfunction
