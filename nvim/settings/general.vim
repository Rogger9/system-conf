syntax on
set number rnu nuw=1

set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set nowrap
set noswapfile
" set nobackup
set clipboard=unnamedplus
"set fileencoding=utf-8
set encoding=UTF-8
set showmatch

set cursorline
set termguicolors

" Marcar una linea vertical en el editor, para ver lo mucho que se escribe por ejemplo
" set colorcolumn=120
" highlight ColoColumn ctermbg=0 guibg=lightgrey

" Search
set incsearch
set hlsearch
set ignorecase

" indentline
"let g:indentLine_char = '⁞'

" Last cursor position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END


let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_vimfiler = 1

"autocmd VimEnter * NERDTree
let g:NERDTreeWinSize = 30
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1
