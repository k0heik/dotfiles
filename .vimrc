"----------------------------------------
" 検索
"----------------------------------------
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch
" 検索結果をハイライト表示
set hlsearch
" 置換の時 g オプションをデフォルトで有効にする
set gdefault

"----------------------------------------
" 表示設定
"----------------------------------------
" タイトルを表示
set title
" 行番号の表示
set number
" 対応する括弧を強調表示
set showmatch
" 省略されずに表示
set display=lastline
" シンタックスハイライト
syntax on
" ステータス行を常に表示
set laststatus=2
" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd

"----------------------------------------
" タブ/インデント
"----------------------------------------
" 自動インデント
set autoindent
" 入力モードでTabキー押下時に半角スペースを挿入
set expandtab
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" インデント幅
set shiftwidth=4
" ファイル内にあるタブ文字の表示幅
set tabstop=4
" タブキー押下時に挿入される文字幅を指定
set softtabstop=4

"----------------------------------------
" 履歴
"----------------------------------------
" コマンドラインの履歴を10000件保存する
set history=10000
" スワップファイルを作成しない
set noswapfile

"----------------------------------------
" カーソル移動
"----------------------------------------
" 行をまたいで移動
set whichwrap=b,s,h,l,<,>,[,],~
" Backspaceキーの影響範囲に制限を設けない
set backspace=indent,eol,start 
" 上下8行の視界を確保
set scrolloff=8
" 左右スクロール時の視界を確保
set sidescrolloff=16
" 左右スクロールは一文字づつ行う
set sidescroll=1

"----------------------------------------
" 動作環境との統合
"----------------------------------------
" ヤンクでクリップボードにコピー
set clipboard=unnamed
" バッファスクロール
set mouse=a
" Windowsでパスの区切り文字をスラッシュで扱う
set shellslash
" ファイル形式の検出
filetype on
" カラースキーマをmolokai
colorscheme molokai

"----------------------------------------
" ヒープの設定
"----------------------------------------
"ビープ音すべてを無効にする
set visualbell t_vb=
"エラーメッセージの表示時にビープを鳴らさない
set noerrorbells 

"----------------------------------------
" Map
"----------------------------------------
" <Leader>の設定
let mapleader = "\<Space>"
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
" NerdTreeの表示
map <C-t> :NERDTreeToggle<CR>

"----------------------------------------
" dein
"----------------------------------------
"dein Scripts-----------------------------
if &compatible
  set nocompatible " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.cache/dein/dein.toml',  {'lazy': 0})
  call dein#load_toml('~/.cache/dein/dein_lazy.toml',  {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

" Let dein manage dein
" Required:
" call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
