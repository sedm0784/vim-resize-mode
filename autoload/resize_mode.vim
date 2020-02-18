function! resize_mode#start(direction, count) abort
  echohl ModeMsg
  echo '-- RESIZE --'
  echohl None

  " The cursor is in the command line while this function is executing.
  " Highlight the position of the cursor in the buffer.
  let match_id = matchadd('Cursor', '\%#')

  let c = char2nr(a:direction)
  while v:true
    " Resize
    execute a:count . 'wincmd' nr2char(c)
    redraw
    let c = getchar()
    if index(['+', '-', '>', '<'], nr2char(c)) >= 0
      continue
    else
      call s:exit_mode(c, match_id)
      break
    endif
  endwhile
endfunction

function! s:exit_mode(c, match_id) abort
  " Clear our highlighting
  call matchdelete(a:match_id)

  " Not sure why, but couldn't get calling `echo` directly here to
  " update the command line working. Do it later with feedkeys.
  call feedkeys(":echo\<CR>", 'nt')

  " getchar() sometimes returns a number, sometimes a string. If it's a
  " number, convert for passing into feedkeys.
  let c = (type(a:c) == v:t_number) ? nr2char(a:c) : a:c

  " In order that you can use the <C-W> mappings in exactly the same way
  " as before, when you exit the mode with a keypress, the keypress
  " takes effect in the way it normally would.
  call feedkeys(c, 'mt')
endfunction
