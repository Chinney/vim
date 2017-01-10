function! Comment()
  if &ft == 'php' || &ft == 'rb' || &ft == 'sh' || &ft == 'py'
    silent s/^./\=submatch(0) == '#' ? '' : '#' . submatch(0)/g
  elseif &ft == 'js' || &ft == 'cpp'
    silent s@^..@\=submatch(0) == '//' ? '' : '//' . submatch(0)@g
  elseif &ft == 'vim'
    silent s/^./\=submatch(0) == '"' ? '' : '"' . submatch(0)/g
  endif
endfunction
