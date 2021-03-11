"行番号を表示
set number             
"改行時に自動でインデントする
set autoindent         
"タブを何文字の空白に変換するか
set tabstop=4          
"自動インデント時に入力する空白の数
set shiftwidth=4       
"タブ入力を空白に変換
set expandtab          
"画面を縦分割する際に右に開く
set splitright         
"yank した文字列をクリップボードにコピー
set clipboard=unnamed  
"検索した文字をハイライトする
set hls                

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
