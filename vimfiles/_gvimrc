" font settings "{{{1
if has('win32')
"  set guifont=MS_Gothic:h12:cSHIFTJIS   "
  set guifont=MS_Gothic:h12             " 
  set linespace=1                       " 行間隔の設定
elseif has('mac')
  set guifont=Monaco:h10
  "set anti enc=utf-8 tenc=macroman gfn=Monaco:h12
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
  set guifontset=a10,r10,k10
endif



" font size change mapping "{{{1
" func
if has("unix")
    function! FontSizePlus ()
      let l:gf_size_whole = matchstr(&guifont, '\( \)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole + 1
      let l:new_font_size = ' '.l:gf_size_whole
      let &guifont = substitute(&guifont, ' \d\+$', l:new_font_size, '')
    endfunction

    function! FontSizeMinus ()
      let l:gf_size_whole = matchstr(&guifont, '\( \)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole - 1
      let l:new_font_size = ' '.l:gf_size_whole
      let &guifont = substitute(&guifont, ' \d\+$', l:new_font_size, '')
    endfunction
else
    function! FontSizePlus ()
      let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole + 1
      let l:new_font_size = ':h'.l:gf_size_whole
      let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
    endfunction

    function! FontSizeMinus ()
      let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole - 1
      let l:new_font_size = ':h'.l:gf_size_whole
      let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
    endfunction
endif

" map
nmap + :call FontSizePlus()<CR>
nmap - :call FontSizeMinus()<CR>




" color scheme "{{{1
"colorscheme tender
"colorscheme atom-dark
"colorscheme lucario
colorscheme lucius
LuciusBlack

