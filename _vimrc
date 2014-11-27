set nocompatible               " Be iMproved
" 一旦ファイルタイプ関連を無効化する
filetype off

""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'
" Gitを便利に使う
NeoBundle 'tpope/vim-fugitive'

" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'

" http://qiita.com/alpaca_taichou/items/056a4c42fe7a928973e6
NeoBundle 'mattn/emmet-vim'
NeoBundle 'taichouchou2/surround.vim'
NeoBundle 'open-browser.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'taichouchou2/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'

" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
set number
set title "ウィンドウのタイトルを書き換える
set cursorline "カーソル行を強調表示
set hlsearch
" 不可視文字を表示する
set list
" タブと行の続きを可視化する
set listchars=tab:>\ ,extends:<
" タブ文字の表示幅
set tabstop=4
" Vimが挿入するインデントの幅
set shiftwidth=4
colorscheme desert 

" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1

""""""""""""""""""""""""""""""
" 操作周り
""""""""""""""""""""""""""""""
"タブ切り替え
nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT

"vimrc関係
"_vimrcや_gvimrcを呼び出す
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>eg :<C-u>tabnew $MYGVIMRC<CR>

"vimのwindowを切り替え
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"コマンドラインWindow
nnoremap : q:
autocmd BufNewFile,BufRead *.sub set filetype=html
""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype plugin indent on     " required!
filetype indent on
syntax on
""""""""""""""""""""""""""""""
" エンコード
""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set fileformats=unix,dos,mac
