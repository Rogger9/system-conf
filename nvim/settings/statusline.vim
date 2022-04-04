" Custom
source ~/.config/nvim/utils/statuslineFunctions.vim

set statusline=\ \ %{StatuslineGitBranch()}\ %{g:currentmode[mode()]}\ %m\ %{expand('%:~:.')}\ %=\ %{FileSize()}\ \ %Y\ %l,%c\ %p%%\ 
