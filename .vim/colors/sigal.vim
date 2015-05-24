" Author: Mirko van der Waal
" Email: <mvdw at airmail dot cc>
" A terminal based vim colorscheme, It is designed to be ONLY for terminal use.

hi Normal       ctermfg=none ctermbg=none cterm=none
hi SpecialKey 	ctermfg=4    ctermbg=none cterm=none
hi NonText 		ctermfg=4    ctermbg=none cterm=bold 
hi Directory 	ctermfg=4    ctermbg=none cterm=none
hi ErrorMsg 	ctermfg=7    ctermbg=none cterm=bold 
hi IncSearch 	ctermfg=none ctermbg=none cterm=reverse
hi Search 		ctermfg=none ctermbg=3    cterm=none
hi MoreMsg 		ctermfg=2    ctermbg=none cterm=none
hi ModeMsg 		ctermfg=none ctermbg=none cterm=bold 
hi LineNr 		ctermfg=8    ctermbg=none cterm=none
hi Question 	ctermfg=2    ctermbg=none cterm=none
hi StatusLine 	ctermfg=8    ctermbg=2    cterm=bold,reverse 
hi StatusLineNC ctermfg=8    ctermbg=2    cterm=bold
hi VertSplit 	ctermfg=none ctermbg=none cterm=reverse 
hi Title 		ctermfg=5    ctermbg=none cterm=bold 
hi Visual 		ctermfg=none ctermbg=0    cterm=none
hi VisualNOS 	ctermfg=none ctermbg=none cterm=bold,underline 
hi WarningMsg 	ctermfg=1    ctermbg=none cterm=none
hi WildMenu 	ctermfg=0    ctermbg=3    cterm=standout
hi Folded 		ctermfg=4    ctermbg=7    cterm=standout
hi FoldColumn 	ctermfg=4    ctermbg=0    cterm=standout
hi Cursor 		ctermfg=none ctermbg=none cterm=none
hi lCursor 		ctermfg=none ctermbg=none cterm=none
hi ColorColumn  ctermfg=none ctermbg=0    cterm=none
hi MatchParen   ctermfg=9    ctermbg=none cterm=bold
hi SignColumn   ctermfg=none ctermbg=0    cterm=none
hi Search       ctermfg=none ctermbg=0    cterm=none

" Syntax highlighting specific.
hi Comment      ctermfg=4    ctermbg=none cterm=none
hi Constant     ctermfg=1    ctermbg=none cterm=none
hi Special      ctermfg=5    ctermbg=none cterm=none
hi Identifier   ctermfg=6    ctermbg=none cterm=none
hi Statement    ctermfg=3    ctermbg=none cterm=none
hi PreProc      ctermfg=5    ctermbg=none cterm=none
hi Type         ctermfg=2    ctermbg=none cterm=none
hi Ignore       ctermfg=7    ctermbg=none cterm=bold
hi Error        ctermfg=7    ctermbg=0    cterm=none
hi Todo         ctermfg=none ctermbg=3    cterm=none

" Syntastic
" Makes use of the syntastic plugin: https://github.com/scrooloose/syntastic/
hi SpellBad             ctermfg=none ctermbg=none cterm=none
hi SpellCap             ctermfg=none ctermbg=none cterm=none
hi SyntasticErrorLine   ctermfg=none ctermbg=0    cterm=none
hi SyntasticErrorSign   ctermfg=9    ctermbg=0    cterm=none
hi SyntasticWarningLine ctermfg=none ctermbg=0    cterm=none
hi SyntasticWarningSign ctermfg=9    ctermbg=0    cterm=none

" BufTabLine
" Makes use of the BufTabLine plugin: https://github.com/ap/vim-buftabline/
hi BufTabLineCurrent    ctermfg=7 ctermbg=0 cterm=none
hi BufTabLineActive     ctermfg=7 ctermbg=0 cterm=none
hi BufTabLineHidden     ctermfg=3 ctermbg=0 cterm=none
hi BufTabLineFill       ctermfg=3 ctermbg=0 cterm=none


