call        plug#begin()

Plug        'https://github.com/rafi/awesome-vim-colorschemes'
Plug        'https://github.com/vim-airline/vim-airline'
Plug        'https://github.com/ryanoasis/vim-devicons'
Plug        'https://github.com/tc50cal/vim-terminal'
Plug        'https://github.com/preservim/tagbar'
Plug        'neoclide/coc.nvim', {'branch': 'release'}
Plug        'Raimondi/delimitMate'
Plug        'wellle/context.vim'
Plug        'github/copilot.vim'
Plug        'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug        'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}


call        plug#end()

set         relativenumber
set         smarttab
set			showmatch
set			ignorecase
set			mouse=v
set			hlsearch
set			incsearch
set			tabstop=4
set			softtabstop=4
set			expandtab
set			number
set			shiftwidth=4
set			expandtab
set			autoindent
set			wildmode=longest,list
set			cc=80
filetype plugin indent	on
syntax			on
set			mouse=a
set			clipboard=unnamedplus
filetype plugin		on
set			cursorline
set			spell


let         delimitMate_autoclosure = 1
let         delimitMate_expand_cr = 1


" Airline
let         g:airline_powerline_fonts = 1
let         g:airline_theme = 'gruvbox'
let         g:airline#extensions#tabline#enabled = 1
let         g:airline#extensions#tabline#fnamemod = ':t'
let         g:airline#extensions#tabline#buffer_idx_mode = 1
let         g:airline#extensions#tabline#show_buffers = 1
let         g:airline#extensions#tabline#show_tab_count = 1
let         g:airline#extensions#tabline#show_tab_type = 1
let         g:airline#extensions#tabline#show_close_button = 1
let         g:airline#extensions#tabline#show_splits = 1
let         g:airline#extensions#tabline#show_wins = 1
let         g:airline#extensions#tabline#show_flags = 1

" oopen chadtree on startup
let         g:chadtree_open_on_vimenter = 1

"map SPACE as leader key
let mapleader = " "
let maplocalleader = " "


" remap chadtree to <leader>v
nnoremap <leader>v <cmd>CHADopen<cr>

" remap terminal to <leader>t
nnoremap <leader>t <cmd>ToggleTerm<cr>

let g:coc_global_extensions = ['coc-clangd', 'coc-explorer']

colorscheme gruvbox 

" Remap <ctrl> as the trigger for autocompletion
inoremap <A-Tab> <Plug>(coc-trigger)


