function! FileSize()
	let bytes = getfsize(expand("%:p"))
	if bytes <= 0
		return ""
	endif
	if bytes > 1048576
		return (bytes / 1048576) . "M"
	elseif bytes > 1024
		return (bytes / 1024) . "K"
	else
		return bytes . "B"
	endif
endfunction

function! StatuslineGitBranch()
  if exists("g:git_branch")
    return g:git_branch
  else
    return ''
  endif
endfunction

function! GetGitBranch()
  let l:is_git_dir = system('echo -n $(git rev-parse --is-inside-work-tree)')
  let g:git_branch = l:is_git_dir == 'true' ?
    \  system('bash -c "echo -n $(git rev-parse --abbrev-ref HEAD)"') : ''
endfunction

autocmd BufEnter * call GetGitBranch()

let g:currentmode={
  \ 'n'  : 'Normal',
  \ 'no' : 'Normal·Operator Pending',
  \ 'v'  : 'Visual',
  \ 'V'  : 'V·Line',
  \ '^V' : 'V·Block',
  \ 's'  : 'Select',
  \ 'S'  : 'S·Line',
  \ '^S' : 'S·Block',
  \ 'i'  : 'Insert',
  \ 'R'  : 'Replace',
  \ 'Rv' : 'V·Replace',
  \ 'c'  : 'Command',
  \ 'cv' : 'Vim Ex',
  \ 'ce' : 'Ex',
  \ 'r'  : 'Prompt',
  \ 'rm' : 'More',
  \ 'r?' : 'Confirm',
  \ '!'  : 'Shell',
  \ 't'  : 'Terminal'
  \}

hi User1 guifg=#FFFFFF guibg=#3D7A95 gui=BOLD
hi User2 guifg=#FFFFFF guibg=#4C566A gui=BOLD
hi User3 guifg=#A995C6 guibg=#4C566A gui=BOLD
