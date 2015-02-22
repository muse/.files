" Mirko van der Waal
syntax enable

" basic settings
set nocompatible
set autoread
set autoindent
set hidden
set smarttab
set wildmode=list:longest,full
set showmatch
set wildmenu
set ruler
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set wildignore=*.o,*~,*.pyc
set number
set ttyfast
set lazyredraw
set showcmd
set iskeyword+=-
set softtabstop=4
set backspace=eol,start,indent
set colorcolumn=80
filetype plugin indent on
" new splits default to right, or below
set splitbelow
set splitright
" tabs for makefiles
autocmd FileType make setlocal noexpandtab

" highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.md set ft=markdown spell

let g:clipbrdDefaultReg = '+'
colorscheme dc2
set cursorline
set nowrap
set title
let &titleold=getcwd()

" enable pathogen
call pathogen#infect()

" handle swp files
set directory=~/.vim/swap,~/tmp,.
set noswapfile

"backup
"set backup
"set backupdir=~/.vim/backup
"set directory=~/.vim/tmp

" enable clipboard
set clipboard=unnamedplus,unnamed
" set clipboard+=unnamed

" Automatically source vimrc on save.
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" enable utf8
set encoding=utf8
set termencoding=utf-8

" searching
set incsearch
set nohlsearch
set smartcase
set ignorecase

" persistent undo history
set undofile " Save undo's after file closes
set undodir=~/.vim/undo,/tmp " where to save undo histories
set undolevels=1000 " How many undos
set undoreload=1000 " number of lines to save for undo

" return to last edit position when opening file
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif"`'")"'")

" function for getting man file for current word
fun! ReadMan()
    " Assign current word under cursor to a script variable:
    let s:man_word = expand('<cword>')
    :exe ":wincmd n"
    :exe ":r!man " . s:man_word . " | col -b"
    :exe ":goto"
    :exe ":delete"
    :exe ":set filetype=man"
endfun

" function for switching between number mode
function! ToggleNumberMode()
    if &relativenumber == 1
        set norelativenumber
        set number
        echo "normal numbering"
        " elseif &number == 1
        " set nonumber
        " echo "numbering off"
    else
        set relativenumber
        echo "relative numbering"
    endif
    return
endfunc

" maps
map 0 ^
nnoremap T :tabnew<cr>
nnoremap <C-o> :NERDTreeToggle<cr>
map Y y$
nnoremap Z :bprev<cr>
nnoremap X :bnext<cr>
nnoremap <M-Z> :tabprev<cr>
nnoremap <M-X> :tabnext<cr>
imap <C-BS> <C-W>
nmap <C-k> ddkP
nmap <C-j> ddp
" toggle spell check
map <leader>ss :setlocal spell!<cr>
" disable Ex mode
map Q <Nop>
" reselect after indenting selection
vnoremap < <gv
vnoremap > >gv
" commenting
map <C-c> <Leader>cm<cr>
map <C-x> <Leader>cu<cr>
map <C-a> <Leader>cs<cr>
" number sign fix
inoremap # X<c-h>#
" search will center on the line it's found in.
map N Nzz
map n nzz
" swap : with ;
nnoremap ; :
nnoremap : ;
" write to read only file
cnoremap w!! w !sudo tee % >/dev/null
" reformat file
nnoremap <Leader>f mzgg=G`z`
" man for current word
nnoremap K :call ReadMan()<CR>
" toggle number mode
nnoremap <f6> :call ToggleNumberMode()<cr>
vnoremap <f6> :call ToggleNumberMode()<cr>
inoremap <f6> <c-o>:call ToggleNumberMode()<cr>
" system clipboard pasting
nnoremap <Leader>y :w !xclip<cr><cr>
nnoremap <Leader>yy :w !xclip<cr><cr>
nnoremap <Leader>p :r !xclip -o<cr>
" deleting without saving to default register
nnoremap <Leader>d "_d
nnoremap <Leader>D "_D
nnoremap <Leader>C "_C
nnoremap <Leader>c "_c
nnoremap <Leader>x "_x
" resizing
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>
" move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" switching between tab modes
nmap <Leader>t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap <Leader>T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
" remove ^M
nnoremap <Leader>m :%s/^M//g

" space after comment
let NERDSpaceDelims=1

" matchtag custom color
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0

" errors
let g:syntastic_aggregate_errors = 1

" disable php folding
let g:DisableAutoPHPFolding = 1

" powerline
set laststatus=2
let g:airline_left_sep='|'
let g:airline_right_sep='|'
let g:airline_theme='raven'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'


set scrolloff=5
set sidescroll=5
