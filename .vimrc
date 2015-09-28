" Maintainer: Mirko van der Waal <mvdw at airmail dot cc>
"
" Decided to start building this .vimrc from scratch.
" It were about time because the other ones were so filled with crap.
" If any of the following things are unclear, most can be solved with <:help argument>

call pathogen#infect()
filetype plugin indent on
syntax on
colors autumn

if has("python") && v:version > 700
    " Extend (append) the original python path with the location of our vim
    " python scripts. It'll be easier for us to call them later this way.
    " We're using '__import__' in favor 'import' will discard the sys module
    " after the path was extended.
    python __import__("sys").path.append("/home/mvdw/.vim/python")

    " Import on a unique line to be more efficient (otherwise you would import
    " the module everytime when calling the map).
    python from pale import Pale
    nnoremap <C-n> :python Pale().post() <CR>
endif

" User defined variables used for various plugins (vim-templates, vim-snippets).
let username = "mvdw"
let license = "MIT"
let email = "mvdw at airmail dot cc"

set termencoding=utf-8 encoding=utf8
set wmnu wim=list:longest,full wig=*.o,*~,*.pyc,*.tmp title titlestring=%t:%l%r%m
set titlelen=24 undofile udir=~/.vim/undo,/tmp ul=1024 ur=1024 ss=5 ls=2 nowrap
set lcs=extends:> tw=80 nu sts=4 shiftwidth=4 ts=4 isk+=- si sta ai hid et tf lz
set sc cc=80 spr sb nobk ignorecase hls magic noswapfile
set statusline=%L:%l%=%m[%{Filesize()}]

function! Filesize()
    let bytes = getfsize(expand("%:p"))
    return bytes <= 1024 ? (bytes <= 0 ? "0B" : bytes . "B") : (bytes / 1024) . "K"
endfunc

augroup __filtype
    au!
    " Unknown filetypes to vim, some make sense -- others don't.
    au BufRead,BufNewFile php-fpm*.conf setlocal ft=dosini
    au BufRead,BufNewFile http*.conf    setlocal ft=apache
    au BufRead,BufNewFile hosts         setlocal ft=conf
    au BufRead,BufNewFile *.groff       setlocal ft=groff
    au BufRead,BufNewFile *.csst        setlocal ft=css
    au BufRead,BufNewFile *.phpt        setlocal ft=php
    au BufRead,BufNewFile *.json        setlocal ft=javascript
    au BufRead,BufNewFile *.conf        setlocal ft=nginx
    au BufRead,BufNewFile *.ini         setlocal ft=dosini
    au BufRead,BufNewFile *.log         setlocal ft=conf
    au BufRead,BufNewFile *.txt         setlocal ft=txt
    au BufRead,BufNewFile *.tpl         setlocal ft=smarty
    au BufRead,BufNewFile *.sql         setlocal ft=mysql
    au BufRead,BufNewFile *.inc         setlocal ft=php
    au BufRead,BufNewFile *.md          setlocal ft=markdown
    au BufRead,BufNewFile *.cl          setlocal ft=lisp
    au BufRead,BufNewFile *.ss          setlocal ft=scheme
    au BufRead,BufNewFile *.di          setlocal ft=d
    au BufRead,BufNewFile *.m           setlocal ft=objc
    au BufRead,BufNewFile *.i           setlocal ft=c
    au BufRead,BufNewFile *.h           setlocal ft=c
augroup END

augroup __cursor
    au!
    " Return to last edit position when opening files.
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
augroup END

augroup __save
    au!
    " Remove the trailing whitespace whenever you're saving the file.
    au BufWritePre * :%s/\s\+$//e
    " Autosave files when focus is lost
    au FocusLost * :wa
augroup END

nnoremap <Leader>yy :w !xclip <CR><CR>
nnoremap <Leader>y :w !xclip <CR><CR>
nnoremap <Leader>p :r !xclip -o <CR>
nnoremap <M-Z> :tabprev<cr>
nnoremap <M-X> :tabnext<cr>
nnoremap Z :bprev<cr>
nnoremap X :bnext<cr>
vnoremap < <gv
vnoremap > >gv
nnoremap N Nzz
nnoremap n nzz
cnoremap ww w
cnoremap wW w
cnoremap Ww w
cnoremap w; w
cnoremap W; w
cnoremap x; x
cnoremap X; x
cnoremap w: w
cnoremap W: w
cnoremap x: x
cnoremap X: x
cnoremap w) w
cnoremap W) w
cnoremap x) x
cnoremap X) x
nnoremap : ;
nnoremap ; :

" Plugin variables that extend the customisation of an plugin.
let g:buftabline_indicators=0
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsExpandTrigger="<TAB>"
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
