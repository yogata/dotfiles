" set "{{{
" �䴰�ꥹ�Ȥ�ɽ��
set wildmode=list:longest
" �䴰��󥰤���
"set wildmenu

" �Хåե����Խ���Ǥ⤽��¾�Υե�����򳫤���褦��
set hidden

" �����Υ��ǥ������Խ���Υե����뤬�ѹ����줿�鼫ư���ɤ�ľ��
set autoread

" ����о�
set backspace=indent,eol,start
set noerrorbells

" ������������
set expandtab     "expand tab to space
set tabstop=2     "<Tab> spaces
set softtabstop=2 "tab key spaces
set shiftwidth=2  "autotab spaces

" ���ơ������饤��
set laststatus=2
" set statusline=%<%F\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}\ %n%=%l/%L,%c%V%8P
set statusline=[%n]\ %F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).','.&ff.']'}\ %=[%c,%l]
"f/F/t S  �Хåե���Υե�����Υѥ������� / ���� / �ե�����̾�Τ�
"m/M F  �����ե饰��ɽ�������Τ� "[+]" / ",+"��'modifiable' �����դΤȤ��� "[-]" / ",-"
"r/R F  �ɤ߹������ѥե饰��ɽ�������Τ� "[RO]" / ",RO"
"h/H F  �إ�ץХåե��ե饰��ɽ�������Τ� "[�إ��]" / ",HLP"
"w/W F  �ץ�ӥ塼������ɥ��ե饰��ɽ�������Τ� "[�ץ�ӥ塼]" / ",PRV"
"y/Y F  �Хåե���Υե�����Υ����ס��㤨�� "[vim]" / ",VIM"' (filetype' �򻲾�)
"k S    ¾�����ѥޥåԥ� |:lmap| ���Ȥ��Ƥ���Ȥ����ѿ� "b:keymap_name" �ޤ��� 'keymap' �� "<keymap>" ��ɽ�����롣
"n N    �Хåե��ֹ档
"b/B N  �������벼��ʸ����ʸ�������ɤ� 10 / 16 �ʿ�ɽ����
"o/O N  �������벼��ʸ�����ե�������ǲ��Х����ܤǤ��뤫��10 / 16 �ʿ�ɽ������Ƭ�Ǥ�1��
"N N    �������Υڡ����ֹ� ('printheader' ��ǤΤ�ͭ��)��
"l N    �����ܤ˥������뤬���뤫��
"L N    �Хåե������Կ���
"c N    �����ܤ˥������뤬���뤫��
"v/V N  ���̾�β����ܤ˥������뤬���뤫��V��ɽ�������� -{num}(����-���Ĥ�)���ͤ� 'c' �����������ɽ������ʤ���
"p N    ���߹Ԥ��ե�������β���ΰ��֤ˤ��뤫 (|CTRL-G| ��Ʊ��)
"P S    ����ɽ������Ƥ��륦����ɥ���Υƥ����Ȥ����ե�������β���ΰ��֤ˤ��뤫��
"a S    ����Υ����ȥ��Ʊ�ͤΰ����ե�����ꥹ�Ȥ�"({current} of {max})" ��ɽ�����롣�ե���������ο���0�ޤ���1�ΤȤ��϶���
"{ NF   '%{' �� '}' �δ֤� expression ��ɾ��������̤��֤������롣�Ĥ���� '}' �����ˤ� '%' ���Ĥ��ʤ����Ȥ���ա�
"( -    ���ܥ��롼�פγ��ϡ����롼����ι������Ƥ��Ф������ȴ���������˻Ȥ��롣�ɤ����� %) ���Ĥ����ʤ���Фʤ�ʤ���
") -    ���ܥ��롼�פν�λ���� width �ϻ���Ǥ��ʤ���
"T N    'tabline' ��: ��٥�֥��֥ڡ��� N�פγ��ϡ��Ǹ�Υ�٥�θ��%T ��񤯤��ȡ����ξ���ϥޥ�������å��˻Ȥ��롣
"X N    'tabline' ��: ��٥�֥��� N ���Ĥ���פγ��ϡ���٥�θ�� %X ��񤯤��ȡ���: %3Xclose%X��%999X �ϡ֥����ȥ��֤��Ĥ���פ��̣���롣���ξ���ϥޥ�������å��˻Ȥ��롣
"< -    �Ԥ�Ĺ������Ȥ����ڤ�ͤ����֡�����Ǥ���Ƭ���� width �ϻ���Ǥ��ʤ���
"= -    ���󤻹��ܤȱ��󤻹��ܤζ��ڤꡣ�� width �ϻ���Ǥ��ʤ���
"# -    ��Ĵ���롼�פ����ꤹ�롣���θ��̾����񤭡����θ�ˤޤ� # ��񤯡��Ĥޤꡢ%#HLname# �Ƚ񤯤ȡ���Ĵ���롼�� HLname �ˤʤ롣�����ȥ�����ɥ��ʳ��Υ��ơ������饤����Ф��Ƥ�Ʊ����Ĵ���ܤ���롣
"* -    �Ȥ��붯Ĵɽ�����롼�פ� User{N} �����ꤹ�롣������ {N} ����minwid �������롣�㤨�� %1* �����ꤹ�롣%* �� %0* ���̾�ζ�Ĵɽ�����������롣��Ĵɽ�����롼�� User{N} �� StatusLine �ΰ㤤�ϡ��󥫥��ȥ�����ɥ��Υ��ơ������Ԥζ�Ĵɽ�������ꤹ�륰�롼�פ� StatusLineNC ��Ŭ�Ѥ���롣�� N �� 1 �ʾ� 9 �ʲ��Ǥ��롣


" ����ǥ�� (smartindent ��ͭ���ˤ���Ȥ��� autoindent ��ͭ���ˤ��٤��餷���Τ�)
set autoindent
set smartindent

" �����ط�
" �Ǹ�ޤǸ�����������Ƭ�����
set wrapscan
" ��ʸ����ʸ���ζ��̤򤷤ʤ�
set ignorecase
" ��ʸ����ޤ��硤��ʸ����ʸ���ζ��̤򤹤�
set smartcase
" �ϥ��饤�Ȥ���
set hlsearch
" ���󥯥���ȥ���������
set incsearch

"������Υ��ޥ�ɤ򥹥ơ�������ɽ������ (��������)
set showcmd

" ��̤��б���Ĵ�����б����ʤ���Хӡ��ײ��Ƿٹ𤹤�
set showmatch

" �����������Ȥ������Ԥ��� (�����������פˤ���)
set wrap

" ���˹��ֹ��ɽ������
set number

" �ե�����̾�䴰���оݳ�������
set suffixes=.bak.swp

" �ޥåԥ󥰡����������ɤΥ����ॢ���Ȼ���
set timeoutlen=1000

" �ǥ��쥯�ȥ�ζ��ڤ��
set shellslash

" ��������ΰ��֤�ɽ��
set ruler

" ���ޥ�ɥ饤��ιԿ�
set cmdheight=1

" �����ȥ��ɽ������
set title
set titleold=

" �ץ�������
if has('win32')
  set makeprg=mingw32-make
else
  set makeprg=make
endif
set grepprg=internal

" ����������
if has("autochdir")
  set autochdir
  set tags=tags;
else
  set tags=./tags,./../tags,./*/tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
endif

" ���֤�����
if v:version >= 700
  set showtabline=2
endif

" Mac�ΥХ������ܸ����Ϥ����ڤ���������򤹤뤿��
if has('mac')
  set iminsert=1
  set imdisable
endif
"}}}

" autocmd "{{{
" �����ȥǥ��쥯�ȥ��ƥХåե��Υե����뤬������֤��ѹ����� (CD.vim)
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

" ����λ������������Ԥ˰�ư
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" }}}

" font "{{{
if has('win32')
  " Windows��
  "set guifont=MS_Gothic:h12:cSHIFTJIS
  "set guifont=MS_Mincho:h12:cSHIFTJIS
  set guifont=MS_Gothic:h9:cSHIFTJIS
  " �Դֳ֤�����
  set linespace=1
elseif has('mac')
  set guifont=Monaco:h12
  "set anti enc=utf-8 tenc=macroman gfn=Monaco:h12
elseif has('xfontset')
  " UNIX�� (xfontset�����)
  set guifontset=a14,r14,k14
endif
"}}}

" mouse and clipboard "{{{
set mouse=nvr
set mousefocus
set mousehide
set guioptions+=a
set clipboard=unnamed
"}}}

" highlight "{{{
augroup filetypedetect
    autocmd BufNewFile,BufRead pf.* setf pf
augroup END
syntax on
filetype on
filetype indent on
filetype plugin on
" menu w/o selected
hi Pmenu      ctermbg=Blue    ctermfg=White   guibg=Blue      guifg=White
" menu selected
hi PmenuSel   ctermbg=Red     ctermfg=White   guibg=Red       guifg=White
" menu side bar
hi PMenuSbar  ctermbg=Gray    ctermfg=White   guibg=Gray      guifg=White
hi MarkWord1  ctermbg=Cyan     ctermfg=Black  guibg=#8CCBEA   guifg=Black
hi MarkWord2  ctermbg=Green    ctermfg=Black  guibg=#A4E57E   guifg=Black
hi MarkWord3  ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72   guifg=Black
hi MarkWord4  ctermbg=Red      ctermfg=Black  guibg=#FF7272   guifg=Black
hi MarkWord5  ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF   guifg=Black
hi MarkWord6  ctermbg=Blue     ctermfg=Black  guibg=#9999FF   guifg=Black
hi Folded     cterm=bold       ctermbg=lightgreen ctermfg=black gui=bold guibg=lightgreen guifg=black
" search
hi Search     ctermbg=Yellow  ctermfg=Black
" normal/insert indivisual statusline
autocmd InsertEnter * hi StatusLine guifg=DarkBLue guibg=DarkYellow gui=none ctermfg=black  ctermbg=Yellow cterm=none
autocmd InsertLeave * hi StatusLine guifg=DarkBLue guibg=White      gui=none ctermfg=black  ctermbg=White cterm=none
"}}}

" language and encoding "{{{
if has('win32')
  set encoding=cp932
elseif $OSTYPE =~ "BSD"
  set encoding=eucjp
else
  set encoding=utf8
endif
set fileencodings=euc-jp,iso-2022-jp,shift-jis,utf-8,cp932,utf-16,ucs-2le,ucs-2,utf-16lejapan
set fileformat=unix
set fileformats=unix,mac,dos
set langmenu=japanese
if $OSTYPE =~ "BSD"
  language ja_JP.eucJP
elseif $OSTYPE =~ "solaris"
  language ja_JP.UTF-8
elseif has('mac')
  language ja_JP.UTF-8
elseif $OSTYPE =~ "linux"
else
  language ja_JP
endif
"language ja_JP.eucJP
"}}}

" backup "{{{
set backup
set backupcopy=auto
set backupdir=~/tmp
"}}}

" mapping "{{{
"input cwd @ commandline mode
let mapleader=","

" buffer
"nmap <silent> <F2> :bprevious<CR>
"nmap <silent> <F3> :bnext<CR>
"nmap <silent> <Space><Space> :bnext<CR>
"nmap <silent> <F4> :bd<CR>
"nmap <silent> <Space><F2> :tabprevious<CR>
"nmap <silent> <Space><F3> :tabnext<CR>
"nmap <silent> <C-B> :BufExplorer<CR>

" move inter window
nmap <silent><C-K> <C-W>k
nmap <silent><C-J> <C-W>j
nmap <silent><C-L> <C-W>l
nmap <silent><C-H> <C-W>h

" visual last added characters
nmap gc `[v`]

" for FizzyFinder
nmap <C-F>b  <ESC>:FuzzyFinderBuffer<CR>
nmap <C-F>f  <ESC>:FuzzyFinderFile<CR>
nmap <C-F>v  <ESC>:FuzzyFinderFavFile<CR>
nmap <C-F>d  <ESC>:FuzzyFinderDir<CR>
nmap <C-F>t  <ESC>:FuzzyFinderTag<CR>

" undo
nmap < g-
nmap > g+

" jump
nmap <silent> <Tab> <C-I>
nmap <silent> <S-Tab> <C-O>

" command mode �� tcsh���Υ����Х���ɤ�
cmap <C-A> <Home>
cmap <C-F> <Right>
cmap <C-B> <Left>
cmap <C-D> <Delete>

" ɽ����ñ�̤ǹ԰�ư����
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" �Խ����ư����
imap <C-E> <C-X><C-E>
imap <C-Y> <C-X><C-Y>

" f �Ǥ�õ���������� ; ������ , ���� , �� vim-howm �ǻȤäƤ���Τ�<space>;��,����ˤ���
nnoremap <space>; ,

" ,t �ǻ��֤�ɽ������ (����Ȥ�(howm��)�Ȥ��˻Ȥ��뤫��)
nmap ,td :call append(line("."), "[" . strftime("%Y-%m-%d") . "]")<CR>
nmap ,tt :call append(line("."), "[" . strftime("%H:%M:%S") . "]")<CR>

" ESC ��Ϣ�Ǥ��ƥϥ��饤�Ȥ����
nmap <silent> <ESC><ESC> :nohlsearch<CR>

" ���ޥ�ɥ饤��ǡ������ȥǥ��쥯�ȥ���䴰����
cnoremap <C-x> <C-r>=expand('%:p:h')<CR>/

" mapleader ���᤹
let mapleader="\\"

"}}}

" fold "{{{
set foldtext=MyFoldText()
function! MyFoldText()
  let line = getline(v:foldstart)
  let sub = substitute(line, '/\*\|\*/\|{{{\d\=\|{', '', 'g')
  let fold_line = v:foldend - v:foldstart
  let prefix = repeat('-', v:foldlevel)
  return "+" . prefix . " " . printf("%3d", fold_line) . " lines: " . sub . " |"
endfunction
set foldmethod=marker
set foldenable
"}}}
"}}}

" abbreviate "{{{
abbreviate #i #include
abbreviate #d #define
" }}}

" vim-latex "{{{
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let g:Tex_CompileRule_dvi = 'platex -kanji=euc -progname=platex -fmt=platex-euc $*'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
if has('win32')
  let g:Tex_ViewRule_dvi = 'c:\tex\dviout\dviout.exe'
elseif has('mac')
  "let g:Tex_ViewRule_pdf = 'open -a "/Applications/Adobe Reader 9/Adobe Reader.app/"'
  let g:Tex_ViewRule_pdf = 'open -a "/Applications/Preview.app/"'
endif
"}}}

" QFixHowm "{{{
set runtimepath+=$HOME/.vim/qfixapp
"�����ޥåץ꡼����
let QFixHowm_Key = ','

"howm_dir�ϥե��������¸�������ǥ��쥯�ȥ�����ꡣ
if has('win32')
  let howm_dir             = 'C:\misc\howm'
else
  let howm_dir             = '~/work/howm'
endif
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let howm_fileencoding    = 'cp932'
let howm_fileformat      = 'dos'

"}}}

" minibfexp "{{{
let g:miniBufExplMapWindowNavVim=1 "hjkl�ǰ�ư
let g:miniBufExplSplitBelow=0  " Put new window above
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1 
let g:miniBufExplSplitToEdge=1
"}}}

" functions "{{{
" go_to_mark() "{{{
function! s:go_to_mark()
  redir => _
  silent marks
  redir END

  let marks = split(_, "\n")
  let top = substitute(marks[0], '^\s*', '', '')
  let marks = filter(marks, "v:val =~# '^\\s[a-zA-Z1-9]'")

  redraw!
  echohl Title | echo top | echohl None
  for m in marks
    echo m
  endfor
  echo ""

  echon 'go to the mark?: '
  let c = nr2char(getchar())
  redraw!

  if c =~# "[\<C-c>\<Esc>]"
    return
  elseif c !~# '[a-zA-Z]'
    return
  endif

  execute 'normal! ' . '`' . c
endfunction

nnoremap <silent> <Space>m :<C-u>call <SID>go_to_mark()<CR>
"}}}
"}}}

" Google CL "{{{
"let GoogleCL = '$HOME/work/googlecl'
"
"" vim��λ���˼�ư�ǥ��åץ���
"let GD_AutoUpload = 1
"
""GoogleDocs��Ͽ�Ѥΰ���ե�������¸���
"let GD_TempDir = '$HOME/tmp/howm_gdtemp'
"
"" howm�ե�������¸��μ�ư�����Ѵؿ�
"function! QFixHowmBufWritePost()
"  "Google Docs�ؤ���¸����
"  call GDSave()
"endfunction
"}}}

" vim-textmanip "{{{
"vmap <C-j> <Plug>(Textmanip.move_selection_down)
"vmap <C-k> <Plug>(Textmanip.move_selection_up)
"vmap <C-h> <Plug>(Textmanip.move_selection_left)
"vmap <C-l> <Plug>(Textmanip.move_selection_right)
"vmap <M-d> <Plug>(Textmanip.duplicate_selection_v)
"nmap <M-d> <Plug>(Textmanip.duplicate_selection_n)
"}}}

" YankRing.vim "{{{
" �쥸���������ư�����ɽ�� (YankRing.vim)
nmap ,y :YRShow<CR>
let g:yankring_max_history = 100
let g:yankring_window_height = 10
"}}}

" showmark ""{{{
hi ShowMarksHLl ctermfg=white ctermbg=blue cterm=bold guifg=blue guibg=lightblue gui=bold
hi ShowMarksHLu ctermfg=white ctermbg=blue cterm=bold guifg=blue guibg=lightblue gui=bold
hi ShowMarksHLo ctermfg=white ctermbg=blue cterm=bold guifg=blue guibg=lightblue gui=bold
hi ShowMarksHLm ctermfg=white ctermbg=blue cterm=bold guifg=blue guibg=lightblue gui=bold
"}}}

" Neocomplcache ""{{{
let g:neocomplcache_enable_at_startup = 1
"
"}}}

