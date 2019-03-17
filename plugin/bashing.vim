" Original Author : Tim Pope
" The version i forked : 1.0.
" Amendments : Pierre-Yves Luyten
"

if exists("g:loaded_bashing") || v:version < 700 || &cp
  finish
endif
let g:loaded_bashing = 1

set ttimeout
if &ttimeoutlen == -1
  set ttimeoutlen=50
endif

function! s:transpose() abort
  let pos = getcmdpos()
  if getcmdtype() =~# '[?/]'
    return "\<C-T>"
  elseif pos > strlen(getcmdline())
    let pre = "\<Left>"
    let pos -= 1
  elseif pos <= 1
    let pre = "\<Right>"
    let pos += 1
  else
    let pre = ""
  endif
  return pre . "\<BS>\<Right>".matchstr(getcmdline()[0 : pos-2], '.$')
endfunction


""""""""""""""""""""""""""""""""" Ctrl Keys """""""""""""""""""""""""""""

" A : bol
inoremap        <C-A> <C-O>^
inoremap   <C-X><C-A> <C-A>
cnoremap        <C-A> <Home>
cnoremap   <C-X><C-A> <C-A>
inoremap <C-g>a <C-a>

" b backward char
inoremap <expr> <C-B> getline('.')=~'^\s*$'&&col('.')>strlen(getline('.'))?"0\<Lt>C-D>\<Lt>Esc>kJs":"\<Lt>Left>"
cnoremap        <C-B> <Left>

" d remove indent goes to Control+g d.
" d is now del char
inoremap <C-d> <Del>
inoremap <C-g>d <C-d>

" e is not end of line. To copy char below use C-l
inoremap <C-e> <Esc>A
inoremap <C-l> <C-e>

" f
inoremap <expr> <C-F> col('.')>strlen(getline('.'))?"\<Lt>C-F>":"\<Lt>Right>"
cnoremap <expr> <C-F> getcmdpos()>strlen(getcmdline())?&cedit:"\<Lt>Right>"

" k kill-line, to enter dygraph use control+g k
inoremap <C-k> <Esc>C
inoremap <C-g>k <C-k>

" j copy char above
inoremap <C-j> <C-y>

" l copy char below
inoremap <C-l> <C-e>

" t transpose. To change indent use gt.
cnoremap <expr> <C-T> <SID>transpose()
inoremap <C-t> <Esc>xpa
inoremap <C-g>t <C-t>

" y yank
inoremap <C-y> <C-a>

"""""""""""""""""""""""""""""""""" Alt keys """"""""""""""""""""""""""""""""
if exists('g:rsi_no_meta')
  finish
endif

if &encoding ==# 'latin1' && has('gui_running') && !empty(findfile('plugin/sensible.vim', escape(&rtp, ' ')))
  set encoding=utf-8
endif

noremap!        <M-b> <S-Left>
noremap!        <M-d> <C-O>dw
cnoremap        <M-d> <S-Right><C-W>
noremap!        <M-BS> <C-W>
noremap!        <M-f> <S-Right>
noremap!        <M-n> <Down>
noremap!        <M-p> <Up>

if !has("gui_running") && !has('nvim')
  silent! exe "set <S-Left>=\<Esc>b"
  silent! exe "set <S-Right>=\<Esc>f"
  silent! exe "set <F31>=\<Esc>d"
  silent! exe "set <F32>=\<Esc>n"
  silent! exe "set <F33>=\<Esc>p"
  silent! exe "set <F34>=\<Esc>\<C-?>"
  silent! exe "set <F35>=\<Esc>\<C-H>"
  map! <F31> <M-d>
  map! <F32> <M-n>
  map! <F33> <M-p>
  map! <F34> <M-BS>
  map! <F35> <M-BS>
  map <F31> <M-d>
  map <F32> <M-n>
  map <F33> <M-p>
  map <F34> <M-BS>
  map <F35> <M-BS>
endif

" vim:set et sw=2:

