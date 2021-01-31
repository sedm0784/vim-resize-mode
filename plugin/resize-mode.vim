" resize-mode.vim
" Author: Rich Cheng <http://whileyouweregone.co.uk>
" Homepage: http://github.com/sedm0784/vim-resize-mode
" Copyright: © 2020 Rich Cheng
" Licence: Resize Mode uses the Vim licence.
" Version: 1.0.0

scriptencoding utf-8

if exists('g:loaded_resize_mode') || &compatible
  finish
endif
let g:loaded_resize_mode = 1

nnoremap <silent> <Plug>ResizeIncreaseHeight :<C-U>call resize_mode#start('+', v:count1)<CR>
nnoremap <silent> <Plug>ResizeDecreaseHeight :<C-U>call resize_mode#start('-', v:count1)<CR>
nnoremap <silent> <Plug>ResizeIncreaseWidth :<C-U>call resize_mode#start('>', v:count1)<CR>
nnoremap <silent> <Plug>ResizeDecreaseWidth :<C-U>call resize_mode#start('<', v:count1)<CR>

if !hasmapto('<Plug>ResizeIncreaseHeight')
  nmap <unique> <C-W>+ <Plug>ResizeIncreaseHeight
  nmap <unique> <C-W><kPlus> <Plug>ResizeIncreaseHeight
endif
if !hasmapto('<Plug>ResizeDecreaseHeight')
  nmap <unique> <C-W>- <Plug>ResizeDecreaseHeight
  nmap <unique> <C-W><kMinus> <Plug>ResizeDecreaseHeight
endif
if !hasmapto('<Plug>ResizeIncreaseWidth')
  nmap <unique> <C-W>> <Plug>ResizeIncreaseWidth
endif
if !hasmapto('<Plug>ResizeDecreaseWidth')
  nmap <unique> <C-W>< <Plug>ResizeDecreaseWidth
endif
