" Custom
so ~/.config/nvim/utils/statuslineFunctions.vim

" set statusline=\%3*\ \ %{StatuslineGitBranch()}\ %1*%{g:currentmode[mode()]}%2*\ %m\ %{expand('%:~:.')}\ %=\ %{FileSize()}\ \ %Y\ %l,%c\ %p%%\ %*

set statusline=\%3*\ \ %{StatuslineGitBranch()}\ %1*%{g:currentmode[mode()]}%2*\ %m\ %{expand('%:t')}\ %=\ %{FileSize()}\ \ %Y\ %l,%c\ %p%%\ %*

" set statusline=\ \ %{StatuslineGitBranch()}\ %{g:currentmode[mode()]}\ %m\ %{expand('%:~:.')}\ %=\ %{FileSize()}\ \ %Y\ %l,%c\ %p%%\ 
