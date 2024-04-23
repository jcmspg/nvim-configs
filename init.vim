call        plug#begin()

Plug        'https://github.com/rafi/awesome-vim-colorschemes'
Plug        'https://github.com/vim-airline/vim-airline'
Plug        'https://github.com/preservim/nerdtree'
Plug        'https://github.com/ryanoasis/vim-devicons'
Plug        'https://github.com/tc50cal/vim-terminal'
Plug        'https://github.com/preservim/tagbar'
Plug        'neoclide/coc.nvim', {'branch': 'release'}
Plug        'Raimondi/delimitMate'
Plug        'wellle/context.vim'
Plug        'github/copilot.vim'
Plug        'https://github.com/ryanoasis/vim-devicons' " Developer Icons

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

autocmd VimEnter * NERDTree

let g:coc_global_extensions = ['coc-clangd', 'coc-explorer']

colorscheme alduin


" Remap <Alt> as the trigger for autocompletion
inoremap <A-Tab> <Plug>(coc-trigger)


