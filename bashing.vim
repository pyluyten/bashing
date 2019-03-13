"
" TODO : ALT : alt b back word / f forward word / alt t swap words
"              alt u capitalize up to end of word
"              alt l un-capitalize
"              alt c capitalize car under cursor
"
" C-a : insert previously inserted text (not in vi) => C-g a
inoremap <C-a> <Esc>I
inoremap <C-b> <Esc>i
" C-c : = esc
" C-d : remove indent. In bash, exit. => C-g d
inoremap <C-d> <Del>
" C-e : insert car below => C-l
inoremap <C-e> <Esc>A
inoremap <C-f> <Esc>la
" C-g : used for C-a / C-d / C-k / C-t
inoremap <C-g>a <C-a>
inoremap <C-g>d <C-d>
inoremap <C-g>k <C-k>
inoremap <C-g>t <C-t>
" C-h : del prev car, like bash already good.
" C-i is <TAB>
" C-j is <ENTER>
" C-k is Enter Digraph in vim, del line i bash. => C-g k
inoremap <C-k> <Esc>C
" C-l is clear in bash, nothing in vim => use it for C-e.
inoremap <C-l> <C-e>
" C-m is <ENTER>, like C-j
" C-n next line in bash, next keyword in vim
" C-o is <ENTER> in bash, jump in vim
" C-p previous line in bash, previous entry in vim
" C-q "allow output" in bash, alias C-v in vim
" C-r is history in bash, register in vim. OK.
" C-s is stop output in bash, will not work in vim =)
" C-t : indente la ligne / bash swap deux car => C-g t
inoremap <C-t> <Esc>xpa
" C-u : delete up to bol. Like bash. Already good.
" C-v : quoted insert in vim
" C-w : delete prev word, like bash, already good.
" C-x : CtrlX mode. In bash swap position. Not possible, keep Xmode.
" C-y : insert car above, paste in bash. Use it for a.
inoremap <C-y> <C-a>
" C-z is suspend in bash, nothing in vim.
inoremap <C-z> <C-y>
