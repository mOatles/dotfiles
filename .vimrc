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
Plugin 'godlygeek/csapprox'

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
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'

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
nnoremap <C-S-d> :!make<CR>

set number
set autoindent
set nowrap

" coloring
set t_Co=256
color colorful256
highlight Normal ctermbg=232
highlight LineNr ctermbg=235 ctermfg=245
highlight clear SignColumn

" Sane C-p
set wildignore+=*.mp3,*/build/*,*.o,*.blend*,*.cym,*/node_modules/*,*/static/*

set shortmess+=I " disable splash

" language specific stuff
let g:rust_recommended_style = 0
au BufReadPost *.es6 set syntax=javascript
au BufReadPost *.mst set syntax=mustache
au BufReadPost *.md set syntax=markdown " im not going to use modula 2, sooo...
syn keyword cTodo contained TODO FIXME XXX HACK NOTE

" :git command, 'cause I can.
:com! -nargs=* Git !git <args>
:cabbrev git <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Git' : 'git')<CR>
