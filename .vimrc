" Author: Mirko van der Waal
" Email: <mvdw at airmail dot cc>
" Decided to start building this .vimrc from scratch.
" It were about time because the other ones were so filled with crap.
" If any of the following things are unclear, most can be solved with <:help arg>

" User defined variables used for various plugins (vim-templates, vim-snippets).
let g:email = "mvdw at airmail dot cc"
let g:username = "Mirko van der Waal"
let g:license = "GNU2"

set encoding=utf8               " Set global encoding to UTF8
set termencoding=utf-8          " Set specific term enncoding to UTF8

set wildmenu                    " Enable <:e> "correctly".
set wildmode=list:longest,full  " How we will showcase it and what to prioritize.
set wildignore=*.o,*~,*.pyc     " Ignore the following files.

set title                       " Enable costum title modification.
set titlestring=%t:%l%r%m       " %f(Current file) %l(Current line) %r%m(Flags)
set titlelen=24                 " The max length the title can have.

set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo,/tmp    " Where to save undo histories
set undolevels=1024             " How many undos.
set undoreload=1024             " Number of lines to save for undo.

set nowrap                      " Prevent vim from wrapping code in the current view.
set sidescroll=5                " The minimal amount of columns to scroll.                                 
set listchars+=extends:>        " What character to use for outwrapped text.

set tw=80           " Ensure a recommended-width for vim.
set number          " Show line numbers.
set softtabstop=4   " While in fact a mix of spaces and <Tab>s is used.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
set tabstop=4       " <Tab>width to 4 spaces.
set smartindent     " Works nearly the same as smarttab.
set smarttab        " Keep the logical indenting when already indented.
set autoindent      " Copy indent from current line when starting a new line.
set hidden          " It hides buffers instead of closing them. 
set expandtab       " Expand to a set tabwidth to ease indenting.
set ttyfast         " Indicates a fast terminal connection.  
                    " More characters will be sent to the screen for redrawing
set lazyredraw      " Waits patiently until the screen has finished drawing.
set showcmd         " Displays additional line and block data.
set iskeyword+=-    " Eases on <:cw>
set colorcolumn=80  " Visualise a row at said columns.
set splitright      " When a new split is made with <:split> it is made below.
set splitbelow      " When a new split is amde with <:vsplit> is is made right. 
set noswapfile      " Don't make swap files -- they're a waste of time.
set ignorecase      " Ignore case sensetive searches. (FOO == foo).
set magic           " Allow ReExpr characters and use them to vaul.

" switching between number mode
function ToggleNumber()
    if &relativenumber == 1
        set norelativenumber
        set number
        " echo "Normal"
    else
        set relativenumber
        " echo "Relative"
    endif
   return
endfunc

nnoremap <C-n> :call ToggleNumber() <CR>

" Return to last edit position when opening files.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Here we load pathogen, makes plugins so much easier.
call pathogen#infect()

" Ensure syntax highlighting is on.
syntax on           
" Set the current colorscheme.
colors sigal256

" Unknown filetypes to vim, some make sense -- others don't.
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.md set ft=markdown
autocmd BufNewFile,BufRead *.csst set ft=css

" Switch these around for faster user -- personal preference.
nnoremap : ;
nnoremap ; :

" Tab and buffer manangement.
nnoremap Z :bprev<cr>
nnoremap X :bnext<cr>
nnoremap <M-Z> :tabprev<cr>
nnoremap <M-X> :tabnext<cr>

" Pasting and yanking from the system clipboard.
nnoremap <Leader>yy :w !xclip <CR><CR>
nnoremap <Leader>y :w !xclip <CR><CR>
nnoremap <Leader>p :r !xclip -o <CR>

" BufTabLine variables, lets and sets
let g:buftabline_indicators=1

" UltiSnips variables, lets and sets
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"

" Python-mode variables, lets and sets
let g:pymode = 1
let g:pymode_syntax_all = 1
let g:pymode_warnings = 0
let g:pymode_indent = 1
let g:pymode_doc = 1
let g:pymode_lint = 0
let g:pymode_rope = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 79
let g:pymode_folding = 0
let g:pymode_lint = 0

" Syntastic variables, sets and lets.
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
