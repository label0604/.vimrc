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

"***** autocmd *****
autocmd QuickFixCmdPost *grep* cwindow


"****** plugin *****
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')

call dein#end()

