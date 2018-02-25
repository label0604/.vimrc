"***** key config *****
vnoremap <C-j> <ESC>
inoremap <C-j> <ESC>
nnoremap tt :tabnew<CR>
nnoremap <ESC><ESC> :noh<CR>
nnoremap <C-cr> o<ESC>
nnoremap <C-]> g<C-]> 

"***** settings *****
colorscheme hybrid
set background=dark
syntax enable
set clipboard+=unnamed
set backspace=indent,eol,start
set hlsearch
set number
set cursorline
hi clear CursorLine
hi LineNr ctermfg=101
hi CursorLineNr ctermfg=255
set hidden
set incsearch
set ignorecase

set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
set autochdir
set imdisable

set showmatch
source $VIMRUNTIME/macros/matchit.vim

set wildmenu
set history=100

"***** autocmd *****
autocmd QuickFixCmdPost *grep* cwindow
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap [Q :<C-u>cfirst<CR>
nnoremap [Q :<C-u>clast<CR>

autocmd FileType html setl filetype=htmldjango

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
call dein#add('tpope/vim-surround') 
call dein#add('tomtom/tcomment_vim') 

"ruby_rails
call dein#add('vim-ruby/vim-ruby')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-endwise')

"python
call dein#add('jmcantrell/vim-virtualenv')
call dein#add('davidhalter/jedi-vim')
call dein#add('scrooloose/syntastic')
let g:syntastic_python_checkers = ['pyflakes']

if dein#check_install()
  call dein#install()
endif

call dein#end()

