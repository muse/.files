" Optional arg1: string in which to replace '$1' by filename with extension and path dropped. Defaults to $1
" Optional arg2: return this value if buffer has no filename
" But why not use the template in this case, too?
" Doesn't make sense to me.

" Get current file name.
fun! vim_snippets#Filename(...)
    let template = get(a:000, 0, "$1")
    let arg2 = get(a:000, 1, "")
    let basename = expand('%:t:r')

    if basename == ''
        return arg2
    else
        return substitute(template, '$1', basename, 'g')
    endif
endf

" Get current working directory limited to only the parent path.
fun! vim_snippets#Directory(...)
    let template = get(a:000, 0, "$1")
    let arg2 = get(a:000, 1, "")

    let basename = expand('%:p:h:t')

    if basename == ''
        return arg2
    else
        return substitute(template, '$1', basename, 'g')
    endif
endf
