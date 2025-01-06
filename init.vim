call plug#begin()

    Plug 'https://github.com/rafi/awesome-vim-colorschemes'
    Plug 'https://github.com/vim-airline/vim-airline'
    Plug 'https://github.com/ryanoasis/vim-devicons'
    Plug 'https://github.com/tc50cal/vim-terminal'
    Plug 'https://github.com/preservim/tagbar'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Raimondi/delimitMate'
    Plug 'wellle/context.vim'
    Plug 'github/copilot.vim'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'PhilRunninger/nerdtree-visual-selection'
    Plug 'mbbill/undotree'
    Plug 'cacharle/c_formatter_42.vim'
    Plug 'https://github.com/42Paris/42header'
    Plug 'akinsho/toggleterm.nvim', { 'branch': 'main' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'joshdick/onedark.vim' " Added onedark colorscheme

call plug#end()

" Settings
set smarttab
set showmatch
set ignorecase
set mouse=v
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set number
set shiftwidth=4
set autoindent
set wildmode=longest,list
set cc=80
filetype plugin indent on
syntax on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set cursorline
set spell

" DelimitMate settings
let delimitMate_autoclosure = 1
let delimitMate_expand_cr = 1

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'Quantum' 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_wins = 1
let g:airline#extensions#tabline#show_flags = 1

" Lua code for toggleterm setup
lua << EOF
    require("toggleterm").setup{
        open_mapping = [[<C-\\>]],  -- Corrected escape for <C-\>
        direction = "float",
        float_opts = {
            border = "curved",
        },
        size = 20,
        shade_terminals = true,
        shading_factor = 2,
        shell = "/bin/bash"
    }
EOF

" Map SPACE as leader key
let mapleader = " "
let maplocalleader = " "

" NERDTree settings
autocmd VimEnter * NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Key mappings
nnoremap <leader>t :botright terminal<CR> 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>l :Telescope<CR>
nnoremap <leader>h :Stdheader<CR>
nnoremap <leader>u :UndotreeToggle<CR>
" cycle buffers
nnoremap <leader>b :bnext<CR>

" CoC extensions
let g:coc_global_extensions = ['coc-clangd', 'coc-explorer']

" Colorscheme
colorscheme onedark 

" Remap <Alt-Tab> for autocompletion
inoremap <A-Tab> <Plug>(coc-trigger)


" Tagbar settings
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_width = 30
let g:tagbar_show_linenumbers = 1
let g:tagbar_show_numbers = 1
let g:tagbar_show_folded = 1
let g:tagbar_foldlevel = 99
let g:tagbar_sort = 1
let g:tagbar_autoshow = 1

nnorem <leader>tb :TagbarToggle<CR>

" terminal toggle
nnoremap <leader>tt :lua require("toggleterm").toggle()<CR>
