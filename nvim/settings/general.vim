syntax on
set number rnu nuw=1

set mouse=a
" set noerrorbells
set sw=2
set expandtab
set smartindent
set autoindent
" set nowrap
" set noswapfile
" set nobackup
set clipboard=unnamedplus
" set fileencoding=utf-8
set encoding=UTF-8
" set showmatch

set tabstop=2

set cursorline

" Search
set incsearch
set hlsearch
set ignorecase

" TextWidth
set tw=190
set wm=2
set wrap linebreak
set breakindent

" indentline
" let g:indentLine_char = '⁞'

so ~/.config/nvim/utils/lastCursorPosition.vim

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_vimfiler = 1

" autocmd VimEnter * NERDTree
let g:NERDTreeWinSize = 30
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1
