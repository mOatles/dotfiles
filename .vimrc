set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tikhomirov/vim-glsl'
Plugin 'wting/rust.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'
Plugin 'fatih/vim-go'
Plugin 'evanmiller/nginx-vim-syntax'

call vundle#end()
filetype plugin indent on

set t_Co=256
syntax on
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab

" Highlight matches when jumping to next
set hlsearch

nnoremap ; :

" execute active file
nnoremap <F9> :!%:p<CR><CR>

set number
set autoindent
set nowrap

color devbox-dark-256

highlight LineNr ctermbg=233 ctermfg=245
highlight Normal ctermbg=232
highlight clear SignColumn

set wildignore+=*.mp3,*/build/*,*.o,*.blend*,*.cym,*/node_modules/*,*/static/*

" no splash
set shortmess+=I

" keep your stupid shit out of my shit
"set backupdir=~/.vim/backup//
"set directory=~/.vim/swap//
"set undodir=~/.vim/undo//
