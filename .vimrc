set nocompatible          " We're running Vim, not Vi!
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins
set number
set noswapfile
colorscheme gummybears 
" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
 " Clear old autocmds in group
 autocmd!
 " autoindent with two spaces, always expand tabs
 autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

if has("gui_running")
 syntax on
 set hlsearch
 colorscheme gummybears
 set bs=2
 set ai
 set ruler
endif


function! MarkWindowSwap()
   let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
   "Mark destination
   let curNum = winnr()
   let curBuf = bufnr( "%" )
   exe g:markedWinNum . "wincmd w"
   "Switch to source and shuffle dest->source
   let markedBuf = bufnr( "%" )
   "Hide and open so that we aren't prompted and keep history
   exe 'hide buf' curBuf
   "Switch to dest and shuffle source->dest
   exe curNum . "wincmd w"
   "Hide and open so that we aren't prompted and keep history
   exe 'hide buf' markedBuf 
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>

map <S-Enter> O<Esc>
map <F5> :CommandTFlush<CR> 
map <c-n> :NERDTreeToggle<CR>
map <CR> o<Esc>
map! jk <Esc> " map ii to Esc

"Latex Stuff
filetype plugin on

set grepprg=grep\ -nH\ $*
