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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}




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
set spelllang=en_us
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set splitright
set splitbelow

set visualbell
set background=dark


highlight Visual ctermbg=grey guibg=grey




" DelimitMate settings
let delimitMate_autoclosure = 1
let delimitMate_expand_cr = 1

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark' 
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

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the listed parsers MUST always be installed)
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (or "all")
    ignore_install = { "javascript" },

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

    highlight = {
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
        disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
            end
            end,

            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            --    additional_vim_regex_highlighting = false,
            },
    additional_vim_regex_highlighting = false

}






EOF

let g:mapleader = "\<Space>"
let g:maplocalleader = ','




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
autocmd ColorScheme * highlight Visual ctermbg=grey guibg=grey
colorscheme abstract

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


" treesitter settings
" toggle treesitter highlighting
nnoremap <leader>th :TSBufDisable<CR>
nnoremap <leader>ts :TSBufEnable<CR>

