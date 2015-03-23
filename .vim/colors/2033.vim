" THEME 2033.
" Author:  Mirko van der Waal
" Date:    March, 2015
" Release: 1
"
" Part of the '2033' set. Preferably use with 
" '2033' .Xdefaults/.Xresources for optimal use.
" See //github.com/Imakethings/2033

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="2033"

"
" term zone
"
hi Normal                  ctermfg=none
hi Boolean                 ctermfg=13
hi Comment                 ctermfg=12
hi Conditional             ctermfg=11
hi Constant                ctermfg=3
hi ColorColumn             ctermbg=0
hi Cursor                  ctermbg=4
hi CursorLineNr            ctermfg=2
hi Debug                   ctermfg=13
hi Define                  ctermfg=11
hi Delimiter               ctermfg=7
hi DiffLine                ctermfg=7 
hi DiffOldLine             ctermfg=1
hi DiffOldFile             ctermfg=1
hi DiffNewFile             ctermfg=2
hi DiffAdd                 ctermfg=10  ctermbg=none
hi DiffAdded               ctermfg=10
hi DiffDelete              ctermfg=1   ctermbg=none
hi DiffRemoved             ctermfg=1
hi DiffChange              ctermfg=6   ctermbg=none
hi DiffChanged             ctermfg=6
hi DiffText                ctermfg=4   ctermbg=none
hi Directory               ctermfg=2
hi Entity                  ctermfg=1
hi Error                   ctermfg=9   ctermbg=none
hi ErrorMsg                ctermfg=9   ctermbg=none
hi Exception               ctermfg=1
hi Float                   ctermfg=14
hi FoldColumn              ctermfg=6   ctermbg=0
hi Folded                  ctermfg=6   ctermbg=0
hi Function                ctermfg=3
hi Identifier              ctermfg=11
hi IncSearch               ctermbg=207 ctermfg=235
hi Keyword                 ctermfg=4
hi Label                   ctermfg=5
hi LineNr                  ctermfg=8
hi Macro                   ctermfg=11
hi MatchParen              ctermfg=0   ctermbg=10
hi ModeMsg                 ctermfg=3
hi MoreMsg                 ctermfg=14
hi Number                  ctermfg=6
hi Normal                  ctermfg=7
hi NonText                 ctermfg=2
hi Operator                ctermfg=1
hi PreCondit               ctermfg=10  cterm=none
hi PreProc                 ctermfg=104
hi Question                ctermfg=14
hi Repeat                  ctermfg=14
hi Search                  ctermfg=207 ctermbg=235
hi Support                 ctermfg=1
hi SpecialChar             ctermfg=13
hi SpecialComment          ctermfg=108
hi Special                 ctermfg=7
hi SpecialKey              ctermfg=10
hi Statement               ctermfg=4   ctermbg=none
hi StorageClass            ctermfg=6
hi String                  ctermfg=2
hi Structure               ctermfg=12
hi Tag                     ctermfg=9
hi Title                   ctermfg=7   ctermbg=none cterm=bold
hi Todo                    ctermfg=10  ctermbg=0
hi Typedef                 ctermfg=9
hi Type                    ctermfg=9
hi Underlined              ctermfg=104 ctermbg=232
hi VertSplit               ctermfg=65  ctermbg=235
hi Visual                  ctermfg=7 ctermbg=235
hi VisualNOS               ctermfg=10  ctermbg=235  cterm=bold
hi WarningMsg              ctermfg=9   
hi WildMenu                ctermbg=0   ctermfg=104
hi CursorLine              ctermbg=0   cterm=none

" statusline
hi StatusLine              ctermfg=7   ctermbg=1    
hi StatusLineNC            ctermfg=0   ctermbg=7
hi StatusModFlag           ctermfg=9   ctermbg=0   
hi StatusRO                ctermfg=6   ctermbg=0  
hi StatusHLP               ctermfg=2   ctermbg=0 
hi StatusPRV               ctermfg=3   ctermbg=0 
hi StatusFTP               ctermfg=4   ctermbg=0 

" spellchecking
hi SpellLocal              ctermfg=0   ctermbg=14  cterm=underline
hi SpellBad                ctermfg=15  ctermbg=1   cterm=underline
hi SpellCap                ctermfg=0   ctermbg=12  cterm=underline
hi SpellRare               ctermfg=0   ctermbg=13  cterm=underline

" pmenu
hi Pmenu                   ctermfg=7    ctermbg=0
hi PmenuSel                ctermfg=none ctermbg=8 
hi PmenuSbar               ctermfg=8    ctermbg=15

" html
hi htmlTag                 ctermfg=7
hi htmlEndTag              ctermfg=7
hi htmlTagName             ctermfg=11

" xml
hi xmlTag                 ctermfg=4
hi xmlEndTag              ctermfg=4
hi xmlTagName             ctermfg=3

" perl
hi perlSharpBang           ctermfg=10  cterm=none
hi perlStatement           ctermfg=13
hi perlStatementStorage    ctermfg=1
hi perlVarPlain            ctermfg=6
hi perlVarPlain2           ctermfg=11

" ruby
hi rubySharpBang           ctermfg=10  cterm=none

" mini buffer explorer
hi MBENormal               ctermfg=8
hi MBEChanged              ctermfg=1
hi MBEVisibleNormal        ctermfg=5
hi MBEVisibleNormalActive  ctermfg=3
hi MBEVisibleChanged       ctermfg=7
hi MBEVisibleChangedActive ctermfg=9

" split bar
hi VertSplit ctermfg=4 ctermbg=4

" matchtag 
hi MatchTag ctermfg=7 ctermbg=2
