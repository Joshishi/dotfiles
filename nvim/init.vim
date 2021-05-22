" init.vim for NeoVim

if &compatible
  set nocompatible
endif

" ------------------------------------------
" AutoCmdGroup Setting
" ------------------------------------------
augroup MyAutoCmd
    autocmd!
augroup END

" ------------------------------------------
" Install Dein and other packages
" ------------------------------------------

let s:dein_dir = expand('~/.cache/dein')

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  let s:toml = expand('~/.config/nvim/dein.toml')
  let s:lazy_toml = expand('~/.config/nvim/dein_lazy.toml')
  
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" dein.vimのパッケージ自動更新を有効にする
let g:dein#auto_recache = 1

"------------------------------------------
" setting
" ------------------------------------------

" default coding set to utf-8
set fenc=utf-8
set encoding=utf-8
" Do not make a back-up file
set nobackup
" Do not make a back-up file
set noswapfile
" Autoreading if editting file updated
set autoread
" バッファ編集中でもその他のファイルを開く
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" Yankをclipboardにコピーできるように設定する
set clipboard+=unnamed

" ------------------------------------------
" Visualize
" ------------------------------------------

" Show the line number
set number
" Show strongly line number
set cursorline
" Show strongly column
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" Visualize the beep sound...
set visualbell
" カッコ入力の対応表示
set showmatch
" General show the status line
set laststatus=2
" Compensation for command-line
set wildmode=list:longest
" 折り返し時に表示行単位での移動ができるようにする
nnoremap j gj
nnoremap k gk

" -----------------------------------------
"  Configure the Nerd font
"  ---------------------------------------
" Set font (hankaku)
set guifont=HackGenNerd\ 11
" Set font (zenkaku)"
set guifontwide=HackGenNerd\ 11
let g:airline_powerline_fonts = 1

" ------------------------------------------
" Tab / indent
" ------------------------------------------

" 不可視文字の可視化 
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%,space:_

" Measure the indent of previous line
set autoindent
" Set the indent as smart-indent
set smartindent
" Set auto-indent for C-language
set cindent
" Set smart-tab for new line
set smarttab
" Set Tab char as space
set expandtab

" 画面上でタブ文字が占める幅 (space 4つ)
set tabstop=4
" 自動インデントでずれる幅 (space 4つ)
set shiftwidth=4

" filetype別のインデント設定
if has("autocmd")
    " activate the filetype search
    filetype plugin on
    " use the indent depends on filetype
    filetype indent on
    " sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtab
    autocmd FileType c          setlocal sw=8 sts=8 ts=8 et
    autocmd FileType h          setlocal sw=8 sts=8 ts=8 et
    autocmd FileType cpp        setlocal sw=4 sts=4 ts=4 et
    autocmd Filetype hpp        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType html       setlocal sw=4 sts=4 ts=4 et
    autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
    autocmd FileType js         setlocal sw=4 sts=4 ts=4 et
    autocmd FileType json       setlocal sw=4 sts=4 ts=4 et
    autocmd FileType javascript setlocal sw=4 sts=4 ts=4 et
    autocmd FileType css        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType bash       setlocal sw=4 sts=4 ts=4 et
endif

" -----------------------------------------
"  Search settings
" -----------------------------------------
" 検索系
" 検索文字列が小文字の場合は大文字小文字関係なく検索
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字入力時に順次対象文字列にヒットさせる
set incsearch
" 検索が最後の候補まで行ったら、最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nnoremap <ESC><ESC> :nohlsearch<CR><ESC> 

" leader setting and key rebind
let mapleader = "\<Space>"
" All select
nnoremap <Leader>a ggVG
" File open
nnoremap <Leader>o :CtrlP<CR>
" File save
nnoremap <Leader>w :w<CR>
" copy to clipboard and paste from clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Visual line mode
nmap <Leader><Leader> V

