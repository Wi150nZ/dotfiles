" author: Wilson Zhu

" general settings
set noshowmode
syntax on
set shiftwidth=2
set tabstop=2
set number
set scrolloff=2
set laststatus=2
colorscheme wombat

" wildmenu
set wildignorecase
set wildmode=list:longest,full

" search settings
set incsearch
set ignorecase
set smartcase

" plugins
call plug#begin('~/.vim/vim-plugins')

Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'

call plug#end()
