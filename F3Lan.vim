" Maintainer:   Felix Langenegger (colorvim@f3lan.ch)
" Version:      1.0
" Last Change:  November 3 2015

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "f3lan"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine         ctermbg=236
  hi ColorColumn        ctermbg=237
  hi CursorColumn       ctermbg=236
  hi MatchParen         ctermfg=157 ctermbg=237 cterm=bold
  hi Pmenu              ctermfg=255 ctermbg=238
  hi PmenuSel           ctermfg=0   ctermbg=148
endif

" General colors
hi Cursor               ctermbg=241
hi Normal               ctermfg=253 ctermbg=234
hi NonText              ctermfg=244 ctermbg=235
hi LineNr               ctermfg=244 ctermbg=232
hi StatusLine           ctermfg=253 ctermbg=238 cterm=italic
hi StatusLineNC         ctermfg=246 ctermbg=238
hi VertSplit            ctermfg=238 ctermbg=238
hi Folded               ctermbg=4   ctermfg=248
hi Title                ctermfg=254 cterm=bold
hi Visual               ctermfg=254 ctermbg=4
hi SpecialKey           ctermfg=244 ctermbg=236

" Syntax highlighting
hi Comment              ctermfg=244
hi Todo                 ctermfg=245
hi Boolean              ctermfg=148
hi String               ctermfg=35
hi Identifier           ctermfg=148
hi Function             ctermfg=255
hi Type                 ctermfg=39
hi Statement            ctermfg=33
hi Keyword              ctermfg=208
hi Constant             ctermfg=208
hi Number               ctermfg=208
hi Special              ctermfg=208
hi PreProc              ctermfg=230
hi Todo                 ctermfg=230


" NERDTree colors
hi NERDTreeFile       ctermfg=250
hi NERDTreeDir        ctermfg=111
hi NERDTreeUp         ctermfg=62
