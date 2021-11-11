set nocompatible
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set cc=80
filetype plugin indent on
syntax on
filetype plugin on
set cursorline
set ttyfast
set t_Co=256

"""""""""""""""""""""
"Plugins
"""""""""""""""""""""

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ntpeters/vim-better-whitespace'
Plug 'chriskempson/tomorrow-theme'
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'airblade/vim-gitgutter'
Plug 'frazrepo/vim-rainbow'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
call plug#end()

colorscheme Tomorrow-Night-Eighties
au FileType c,cpp,objc,objcpp call rainbow#load()
