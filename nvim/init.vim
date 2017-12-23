" author: Wilson Zhu

" plugin manager
call plug#begin('~/.local/share/nvim/plugged')

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

" general settings 
set number
set shiftwidth=2
set tabstop=2
set scrolloff=2

" wildmenu
set wildignorecase
set wildmode=list:longest,full

" search
set incsearch
set ignorecase
set smartcase

" airline settings
set noshowmode
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='luna'

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode',' ','branch'])
	let g:airline_section_b = airline#section#create_left(['ffenc','hunks','%f'])
endfunction

" theme
colorscheme iceberg
syntax on

" function calls
autocmd VimEnter * call AirlineInit()
