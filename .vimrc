" vim-clang
" disable auto comple

" Activate the dein
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Install NERDTree
call dein#begin('~/.cache/dein')
call dein#add('preservim/nerdtree')
call dein#end()

" Install vimairline
call dein#begin('~/.cache/dein')
call dein#add('vim-airline/vim-airline')
call dein#end()
" Eneble the smarter tab line for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" setting
" default coding set to utf-8
set fenc=utf-8
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
" Yankをclipboardにコピーできように設定する
set clipboard+=unnamed

" NERDTree setting
" NERDTreeを有効化するためのショートカット
map <C-e> :NERDTreeToggle<CR>
" NERDTreeを常に有効化する
autocmd VimEnter * execute 'NERDTree'
" NERDTree上で隠しファイルの表示
let NERDTreeShowHidden = 1

" Visualize
" Show the line number
set number
" Show strongly line number
set cursorline
" Show strongly column
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" Set the indent as smart-indent
set smartindent
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
" Activate the systax hilight
syntax enable
" Set font (hankaku)
set guifont=Hack\ 11
" Set font (zenkaku)
set guifontwide=NotoSansMonoCKJJP\ 11

" Set colorscheme gruvbox
call dein#add('morhetz/gruvbox')
" change color scheme
colorscheme gruvbox
" darkmode
set background=dark
" hard darkmode
let g:gruvbox_contrast_dark = 'hard'

" Tab
" 不可視文字の可視化 (Tab -> "-")
set list listchars=tab:\ \-
" Set Tab char as space
set expandtab
" 画面上でタブ文字が占める幅 (space 2つ->4つ)
set tabstop=4
" 自動インデントでずれる幅 (space 2つ->4つ)
set shiftwidth=4

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

