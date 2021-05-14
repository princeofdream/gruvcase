" -----------------------------------------------------------------------------
" File: gruvcase.vim
" Description: Retro groove color scheme for Vim
" Author: morhetz <morhetz@gmail.com>
" Source: https://github.com/morhetz/gruvcase
" Last Modified: 09 Apr 2014
" -----------------------------------------------------------------------------

function! gruvcase#invert_signs_toggle()
  if g:gruvcase_invert_signs == 0
    let g:gruvcase_invert_signs=1
  else
    let g:gruvcase_invert_signs=0
  endif

  colorscheme gruvcase
endfunction

" Search Highlighting {{{

function! gruvcase#hls_show()
  set hlsearch
  call GruvboxHlsShowCursor()
endfunction

function! gruvcase#hls_hide()
  set nohlsearch
  call GruvboxHlsHideCursor()
endfunction

function! gruvcase#hls_toggle()
  if &hlsearch
    call gruvcase#hls_hide()
  else
    call gruvcase#hls_show()
  endif
endfunction

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
