set nocompatible
filetype off
filetype plugin indent on
syntax on

" ==============================================================================
" Pathogen
" ==============================================================================
execute pathogen#infect()
" ==============================================================================

" ==============================================================================
" Vundle
" ==============================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
nmap <leader>p :PluginInstall<CR>
" ==============================================================================
" Vundle
Plugin 'gmarik/Vundle.vim'

" Nerdtree
Plugin 'scrooloose/nerdtree'

" Command-T
Plugin 'git://git.wincent.com/command-t.git'

" JellyBeans Color Schema
Plugin 'nanotech/jellybeans.vim'

" EditorConfig
Plugin 'editorconfig/editorconfig-vim'

" Vim-JSBeautify
Plugin 'maksimr/vim-jsbeautify'

" JS Beautify
Plugin 'einars/js-beautify'

" VIM JS
Plugin 'pangloss/vim-javascript'

" Emmet (HTML)
Plugin 'mattn/emmet-vim'

" Syntax Check
Plugin 'scrooloose/syntastic'

" Tabular
Plugin 'godlygeek/tabular'

" Jade
Plugin 'git://github.com/digitaltoad/vim-jade.git'

" Latex Live Preview
Plugin 'git://github.com/xuhdev/vim-latex-live-preview.git'
" ==============================================================================

" ==============================================================================
" NerdTree
" ==============================================================================
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
map <c-n> :NERDTreeToggle<CR>
" ==============================================================================

" ==============================================================================
" CommandT
" ==============================================================================
map <F5> :CommandTFlush<CR>
" ==============================================================================

" ==============================================================================
" Emmet
" ==============================================================================
let g:user_emmet_leader_key='<C-Z>'
" ==============================================================================

" ==============================================================================
" JsBeautify
" ==============================================================================
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" ==============================================================================


" ##############################################################################

" ==============================================================================
" Basic Settings
" ==============================================================================

" Softtabs
set ai sw=2 sts=2 et

" Swapfiles
set noswapfile

" Color
color f3lan
if has('gui_running')
  color mustang
endif

" Line Numbers
set rnu!
set nu!

" Line Width
set textwidth=80
set colorcolumn=81

" White Spaces
set list listchars=tab:\ \ ,trail:·

" Vertical Split
map <Bar> :vsp<CR>

" Horizontal Split
map - :sp<CR>

" Remove white spaces
map <leader><Space> :%s/\s\+$//<CR>

" Formating JSON Objects
map <leader>j :'<,'>:Tab/:<CR>

" New Tab
nnoremap tn :tabe<CR>

"Latex Live Preview
let g:livepreview_previewer = 'open -a Preview'
map <leader>p :LLPStartPreview<CR>

au BufNewFile,BufRead *.ejs set filetype=html
