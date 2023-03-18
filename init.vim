call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
Plug 'uiiaoo/java-syntax.vim'
Plug 'fcpg/vim-orbital'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
call plug#end()

let mapleader = " "
nnoremap <leader>q <C-\><C-n>
nnoremap <leader>k :grep! "\<cword>" **/*.<cfile><CR>
nnoremap <leader>f <cmd>Telescope find_files<cr>
" keymaps
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-l> <C-w>k
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <C-g> :NERDTreeToggle<CR>

syntax enable
set number
set relativenumber
colorscheme gruvbox
set autoindent
set si
set shiftwidth=4


au FileType java let b:AutoPairs = {'(':')', '[':']', '{':'}', '\"':'\"'}

au FileType c let b:AutoPairs = {'(':')', '[':']', '{':'}', '\"':'\"'}

au FileType css let b:AutoPairs = {'(':')', '{':'}', '[':']', '\"':'\"', '\'':'\''}

au FileType html let b:AutoPairs = {'<':'>', '\"':'\"', '\'':'\''}

hi Normal guibg=NONE ctermbg=NONE
