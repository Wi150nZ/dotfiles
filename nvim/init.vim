" author: Wilson Zhu

" general settings
set noshowmode
syntax on
set shiftwidth=2
set tabstop=2
set number
set scrolloff=2
set laststatus=2

" wildmenu
set wildignorecase
set wildmode=list:longest,full

" search
set incsearch
set ignorecase
set smartcase

" airline settings
let g:airline_powerline_fonts=1
let g:airline_theme='jellybeans'

" plugins
call plug#begin('~/.local/share/nvim/plugged')

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'flazz/vim-colorschemes'

call plug#end()

colorscheme jellybeans
