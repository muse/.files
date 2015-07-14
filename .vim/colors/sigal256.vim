" Author: Mirko van der Waal
" Email: <mvdw at airmail dot cc>
" 

if exists("syntax_on") 
    syntax reset 
endif

highlight clear

" Default
hi Cursor       ctermfg=NONE ctermbg=248 cterm=NONE 
hi Visual       ctermfg=NONE ctermbg=59 cterm=NONE 
hi CursorLine   ctermfg=NONE ctermbg=235 cterm=NONE 
hi CursorColumn ctermfg=NONE ctermbg=235 cterm=NONE 
hi ColorColumn  ctermfg=NONE ctermbg=235 cterm=NONE 
hi LineNr       ctermfg=245 ctermbg=233 cterm=NONE   
hi VertSplit    ctermfg=240 ctermbg=240 cterm=NONE   
hi MatchParen   ctermfg=179 ctermbg=NONE cterm=NONE  
hi StatusLine   ctermfg=231 ctermbg=240 cterm=bold   
hi StatusLineNC ctermfg=231 ctermbg=240 cterm=NONE   
hi SignColumn   ctermfg=NONE ctermbg=66 cterm=NONE
hi Pmenu        ctermfg=95 ctermbg=NONE cterm=NONE  
hi PmenuSel     ctermfg=NONE ctermbg=59 cterm=NONE
hi IncSearch    ctermfg=NONE ctermbg=59 cterm=NONE
hi Search       ctermfg=NONE ctermbg=59 cterm=italic
hi Directory    ctermfg=167 ctermbg=NONE cterm=NONE
hi Folded       ctermfg=59 ctermbg=233 cterm=NONE

" Syntax
hi Normal       ctermfg=231 ctermbg=233 cterm=NONE   
hi Boolean      ctermfg=167 ctermbg=NONE cterm=NONE  
hi Character    ctermfg=167 ctermbg=NONE cterm=NONE  
hi Comment      ctermfg=59 ctermbg=NONE cterm=italic
hi Conditional  ctermfg=179 ctermbg=NONE cterm=NONE
hi Constant     ctermfg=167 ctermbg=NONE cterm=NONE 
hi Define       ctermfg=179 ctermbg=NONE cterm=NONE
hi ErrorMsg     ctermfg=NONE ctermbg=NONE cterm=NONE 
hi WarningMsg   ctermfg=NONE ctermbg=NONE cterm=NONE 
hi Float        ctermfg=167 ctermbg=NONE cterm=NONE  
hi Function     ctermfg=95 ctermbg=NONE cterm=NONE  
hi Identifier   ctermfg=228 ctermbg=NONE cterm=NONE  
hi Keyword      ctermfg=179 ctermbg=NONE cterm=NONE
hi Label        ctermfg=107 ctermbg=NONE cterm=NONE  
hi NonText      ctermfg=239 ctermbg=234 cterm=NONE   
hi Number       ctermfg=167 ctermbg=NONE cterm=NONE  
hi Operator     ctermfg=179 ctermbg=NONE cterm=NONE  
hi PreProc      ctermfg=179 ctermbg=NONE cterm=NONE  
hi Special      ctermfg=231 ctermbg=NONE cterm=NONE  
hi SpecialKey   ctermfg=239 ctermbg=235 cterm=NONE   
hi Statement    ctermfg=179 ctermbg=NONE cterm=NONE  
hi StorageClass ctermfg=228 ctermbg=NONE cterm=NONE  
hi String       ctermfg=107 ctermbg=NONE cterm=NONE
hi Tag          ctermfg=95 ctermbg=NONE cterm=NONE
hi Title        ctermfg=231 ctermbg=NONE cterm=bold
hi Todo         ctermfg=59 ctermbg=NONE cterm=bold
hi Type         ctermfg=95 ctermbg=NONE cterm=NONE
hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline 

" HTML 
hi htmlTag          ctermfg=137 ctermbg=NONE cterm=NONE  
hi htmlEndTag       ctermfg=137 ctermbg=NONE cterm=NONE  
hi htmlTagName      ctermfg=137 ctermbg=NONE cterm=NONE  
hi htmlArg          ctermfg=137 ctermbg=NONE cterm=NONE
hi htmlSpecialChar  ctermfg=167 ctermbg=NONE cterm=NONE

" Javascript
hi javaScriptFunction   ctermfg=228 ctermbg=NONE cterm=NONE  
hi javaScriptBraces     ctermfg=NONE ctermbg=NONE cterm=NONE 

" CSS
hi cssURL           ctermfg=103 ctermbg=NONE cterm=NONE  
hi cssFunctionName  ctermfg=186 ctermbg=NONE cterm=NONE  
hi cssColor         ctermfg=167 ctermbg=NONE cterm=NONE 
hi cssPseudoClassId ctermfg=95 ctermbg=NONE cterm=NONE  
hi cssClassName     ctermfg=95 ctermbg=NONE cterm=NONE  
hi cssValueLength   ctermfg=167 ctermbg=NONE cterm=NONE  
hi cssCommonAttr    ctermfg=167 ctermbg=NONE cterm=NONE
hi cssBraces        ctermfg=NONE ctermbg=NONE cterm=NONE 

" Syntastic: Makes use of the syntastic plugin: https://github.com/scrooloose/syntastic/
hi SpellBad             ctermfg=none ctermbg=none cterm=none
hi SpellCap             ctermfg=none ctermbg=none cterm=none
hi SyntasticErrorLine   ctermfg=none ctermbg=0    cterm=none
hi SyntasticErrorSign   ctermfg=9    ctermbg=0    cterm=none
hi SyntasticWarningLine ctermfg=none ctermbg=0    cterm=none
hi SyntasticWarningSign ctermfg=9    ctermbg=0    cterm=none

" BufTabLine: Makes use of the BufTabLine plugin: https://github.com/ap/vim-buftabline/
hi BufTabLineCurrent    ctermfg=5 ctermbg=none cterm=bold
hi BufTabLineActive     ctermfg=5 ctermbg=none cterm=none
hi BufTabLineHidden     ctermfg=2 ctermbg=none cterm=none
hi BufTabLineFill       ctermfg=2 ctermbg=none cterm=none

