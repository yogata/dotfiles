" set "{{{
" 補完リストを表示
set wildmode=list:longest
" 補完リングを巡る
"set wildmenu

" バッファが編集中でもその他のファイルを開けるように
set hidden

" 外部のエディタで編集中のファイルが変更されたら自動で読み直す
set autoread

" 削除対象
set backspace=indent,eol,start
set noerrorbells

" タブ幅の設定
set expandtab     "expand tab to space
set tabstop=2     "<Tab> spaces
set softtabstop=2 "tab key spaces
set shiftwidth=2  "autotab spaces

" ステータスライン
set laststatus=2
" set statusline=%<%F\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}\ %n%=%l/%L,%c%V%8P
set statusline=[%n]\ %F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).','.&ff.']'}\ %=[%c,%l]
"f/F/t S  バッファ内のファイルのパス．相対 / 絶対 / ファイル名のみ
"m/M F  修正フラグ。表示されるのは "[+]" / ",+"。'modifiable' がオフのときは "[-]" / ",-"
"r/R F  読み込み専用フラグ。表示されるのは "[RO]" / ",RO"
"h/H F  ヘルプバッファフラグ。表示されるのは "[ヘルプ]" / ",HLP"
"w/W F  プレビューウィンドウフラグ。表示されるのは "[プレビュー]" / ",PRV"
"y/Y F  バッファ内のファイルのタイプ。例えば "[vim]" / ",VIM"' (filetype' を参照)
"k S    他言語用マッピング |:lmap| が使われているとき、変数 "b:keymap_name" または 'keymap' を "<keymap>" と表示する。
"n N    バッファ番号。
"b/B N  カーソル下の文字の文字コードの 10 / 16 進数表現。
"o/O N  カーソル下の文字がファイル内で何バイト目であるか。10 / 16 進数表現．先頭では1。
"N N    印刷時のページ番号 ('printheader' 内でのみ有効)。
"l N    何行目にカーソルがあるか。
"L N    バッファ内の総行数。
"c N    何列目にカーソルがあるか。
"v/V N  画面上の何列目にカーソルがあるか。Vの表示形式は -{num}(前に-がつく)。値が 'c' と等しければ表示されない。
"p N    現在行がファイル内の何％の位置にあるか (|CTRL-G| と同様)
"P S    現在表示されているウィンドウ内のテキストが、ファイル内の何％の位置にあるか。
"a S    既定のタイトルと同様の引数ファイルリストを"({current} of {max})" と表示する。ファイル引数の数が0または1のときは空。
"{ NF   '%{' と '}' の間の expression を評価し、結果に置き換える。閉じ括弧 '}' の前には '%' がつかないことに注意。
"( -    項目グループの開始。グループ内の項目全てに対する幅と寄せ方の設定に使える。どこかで %) で閉じられなければならない。
") -    項目グループの終了。欄 width は指定できない。
"T N    'tabline' 用: ラベル「タブページ N」の開始。最後のラベルの後に%T を書くこと。この情報はマウスクリックに使われる。
"X N    'tabline' 用: ラベル「タブ N を閉じる」の開始。ラベルの後に %X を書くこと。例: %3Xclose%X。%999X は「カレントタブを閉じる」を意味する。この情報はマウスクリックに使われる。
"< -    行が長すぎるときに切り詰める位置。既定では先頭。欄 width は指定できない。
"= -    左寄せ項目と右寄せ項目の区切り。欄 width は指定できない。
"# -    強調グループを設定する。この後に名前を書き、その後にまた # を書く。つまり、%#HLname# と書くと、強調グループ HLname になる。カレントウィンドウ以外のステータスラインに対しても同じ強調が施される。
"* -    使われる強調表示グループを User{N} に設定する。ここで {N} は欄minwid から取られる。例えば %1* と設定する。%* や %0* で通常の強調表示を復元する。強調表示グループ User{N} と StatusLine の違いは、非カレントウィンドウのステータス行の強調表示を設定するグループの StatusLineNC に適用される。数 N は 1 以上 9 以下である。


" インデント (smartindent を有効にするときは autoindent も有効にすべきらしいので)
set autoindent
set smartindent

" 検索関係
" 最後まで検索したら先頭に戻る
set wrapscan
" 大文字小文字の区別をしない
set ignorecase
" 大文字を含む場合，大文字小文字の区別をする
set smartcase
" ハイライトする
set hlsearch
" インクリメントサーチする
set incsearch

"入力中のコマンドをステータスに表示する (右下の方)
set showcmd

" 括弧の対応を強調し，対応がなければビープ音で警告する
set showmatch

" 横幅が狭いとき，改行する (スクロール不要にする)
set wrap

" 左に行番号を表示する
set number

" ファイル名補完で対象外を設定
set suffixes=.bak.swp

" マッピング，キーコードのタイムアウト時間
set timeoutlen=1000

" ディレクトリの区切り子
set shellslash

" カーソルの位置を表示
set ruler

" コマンドラインの行数
set cmdheight=1

" タイトルを表示する
set title
set titleold=

" プログラム指定
if has('win32')
  set makeprg=mingw32-make
else
  set makeprg=make
endif
set grepprg=internal

" タグの設定
if has("autochdir")
  set autochdir
  set tags=tags;
else
  set tags=./tags,./../tags,./*/tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
endif

" タブの設定
if v:version >= 700
  set showtabline=2
endif

" Macのバグ？日本語入力が途切れる問題を回避するため
if has('mac')
  set iminsert=1
  set imdisable
endif
"}}}

" autocmd "{{{
" カレントディレクトリを各バッファのファイルがある位置に変更する (CD.vim)
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

" 前回終了したカーソル行に移動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" }}}

" font "{{{
if has('win32')
  " Windows用
  "set guifont=MS_Gothic:h12:cSHIFTJIS
  "set guifont=MS_Mincho:h12:cSHIFTJIS
  set guifont=MS_Gothic:h9:cSHIFTJIS
  " 行間隔の設定
  set linespace=1
elseif has('mac')
  set guifont=Monaco:h12
  "set anti enc=utf-8 tenc=macroman gfn=Monaco:h12
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
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

" command mode 時 tcsh風のキーバインドに
cmap <C-A> <Home>
cmap <C-F> <Right>
cmap <C-B> <Left>
cmap <C-D> <Delete>

" 表示行単位で行移動する
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" 編集中移動する
imap <C-E> <C-X><C-E>
imap <C-Y> <C-X><C-Y>

" f での探索は前方が ; 後方が , だが , は vim-howm で使っているので<space>;を,代わりにする
nnoremap <space>; ,

" ,t で時間を表示する (メモをとる(howm等)ときに使えるかも)
nmap ,td :call append(line("."), "[" . strftime("%Y-%m-%d") . "]")<CR>
nmap ,tt :call append(line("."), "[" . strftime("%H:%M:%S") . "]")<CR>

" ESC を連打してハイライトをやめる
nmap <silent> <ESC><ESC> :nohlsearch<CR>

" コマンドラインで，カレントディレクトリを補完する
cnoremap <C-x> <C-r>=expand('%:p:h')<CR>/

" mapleader を戻す
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
"キーマップリーダー
let QFixHowm_Key = ','

"howm_dirはファイルを保存したいディレクトリを設定。
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
let g:miniBufExplMapWindowNavVim=1 "hjklで移動
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
"" vim終了時に自動でアップロード
"let GD_AutoUpload = 1
"
""GoogleDocs登録用の一時ファイル保存場所
"let GD_TempDir = '$HOME/tmp/howm_gdtemp'
"
"" howmファイル保存後の自動処理用関数
"function! QFixHowmBufWritePost()
"  "Google Docsへの保存処理
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
" レジスタの内容一覧を表示 (YankRing.vim)
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

