"***** key config *****
vnoremap <C-j> <ESC>
inoremap <C-j> <ESC>
nnoremap tt :tabnew<CR>
nnoremap <ESC><ESC> :noh<CR>


"***** settings *****
colorscheme apprentice
set clipboard+=unnamed
set backspace=indent,eol,start
set hlsearch
set number
set hidden

set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

set showmatch
source $VIMRUNTIME/macros/matchit.vim

set wildmenu
set history=100

"***** autocmd *****
autocmd QuickFixCmdPost *grep* cwindow


"****** plugin *****
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
  set nocompatible
endif

if !isdirectory(s:dein_repo_dir)
  execute '!git clone git@github.com:Shougo/dein.vim.git' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir
call dein#begin(s:dein_dir)
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Yggdroot/indentLine')
call dein#add('szw/vim-tags')
call dein#add('tpope/vim-surround') "cs"'で囲み記号を変更
call dein#add('tomtom/tcomment_vim') "Ctrl- * 2で選択行をコメントアウト

"ruby_rails
call dein#add('vim-ruby/vim-ruby')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-endwise')

if dein#check_install()
  call dein#install()
endif

call dein#end()
