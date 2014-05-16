execute pathogen#infect()
set t_Co=256
syntax on
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
au BufNewFile,BufRead *.cpp set syntax=cpp11

" Highlight matches when jumping to next
set hlsearch

nnoremap ; :

set number
set autoindent
set nowrap

color devbox-dark-256

highlight LineNr ctermbg=233 ctermfg=245
highlight clear SignColumn
