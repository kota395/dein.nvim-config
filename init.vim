set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=2          "タブを何文字の空白に変換するか
set shiftwidth=2       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする


if &compatible
  set nocompatible               " Be iMproved
  endif

set runtimepath+=/home/kota/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/kota/.vim/bundles')
  call dein#begin('/home/kota/.vim/bundles')

"---------------------------------------------------------------------
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
"---------------------------------------------------------------------

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

