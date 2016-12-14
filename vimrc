"vim configuration file"
"======================"

"vundle: vim plugin manager"
"--------------------------"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree'
  Plugin 'vim-syntastic/syntastic'
  Plugin 'artur-shaik/vim-javacomplete2'
  Plugin 'flazz/vim-colorschemes'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on

"editor settings"
"--------------------"
set title
set number
set autoindent
set encoding=utf-8
syntax on
colorscheme ashen

"tabs! tabs everywhere!"
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"airline config"
"--------------"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
