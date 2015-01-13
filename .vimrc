set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/vis'
Plugin 'danro/rename.vim'

" Languages
Plugin 'mtscout6/vim-cjsx'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tikhomirov/vim-glsl'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'moatles/vim-lish'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'peterhoeg/vim-qml'
Plugin 'wting/rust.vim'

call vundle#end()
filetype plugin indent on

syntax on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Highlight matches when jumping to next
set hlsearch

nnoremap ; :

" execute active file
nnoremap <F9> :!%:p<CR><CR>
" formatting
nnoremap <C-S-f> :%!astyle -s2 -A3<CR><CR>
" copy into x clipboard FIXME: grabs full line instead of selection.
vnoremap <C-S-c> :w !xclip -se c<CR><CR>

set number
set autoindent
set nowrap

" coloring
set t_Co=256
color devbox-dark-256
highlight LineNr ctermbg=233 ctermfg=245
highlight Normal ctermbg=232
highlight clear SignColumn

set wildignore+=*.mp3,*/build/*,*.o,*.blend*,*.cym,*/node_modules/*,*/static/*

set shortmess+=I " disable splash

" language specific stuff
au BufReadPost *.es6 set syntax=javascript " es6 === javascript

" :git command, 'cause I can.
:com! -nargs=* Git !git <args>
:cabbrev git <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Git' : 'git')<CR>
