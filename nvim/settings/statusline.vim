" statusline custom
source ~/.config/nvim/utils/modeIndentline.vim

hi User1 guifg=#FFFFFF guibg=#3D7A95 gui=BOLD
hi User2 guifg=#FFFFFF guibg=#4C566A gui=BOLD
hi User3 guifg=#A995C6 guibg=#4C566A gui=BOLD

set laststatus=2
set statusline=
set statusline+=\ %l
set statusline+=\ %*
set statusline+=%1*\ «
set statusline+=%1*\ %{StatuslineMode()}\ %*
set statusline+=%1*\»\ %*
" Defirnir Branch de Git
" set statusline+=%1*\ ℽ\ %*
" Ϥ կ ⨚ ℽ
set statusline+=%3*\ %m\ %*
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %p%%
set statusline+=\ %{strlen(&fenc)?&fenc:'none'}
set statusline+=%2*\ «
set statusline+=\ %Y
set statusline+=\ ≈
set statusline+=\ %l:%c
" set statusline+=\ %{strftime(\"%H:%M\")} " Hora
set statusline+=\ »
set statusline+=\%*
set statusline+=\ %n
set statusline+=\ %*
