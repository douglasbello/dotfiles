call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'fcpg/vim-orbital'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'morhetz/gruvbox'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'patstockwell/vim-monokai-tasty'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'alessandroyorba/sierra'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
call plug#end()

" keymaps
let mapleader = " "
nnoremap <leader>q <C-\><C-n>
nnoremap <leader>k :grep! "\<cword>" **/*.<cfile><CR>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <C-j> :vsp leftabove new<CR>
nnoremap <C-h> :sp belowright new<CR>
autocmd FileType nerdtree nnoremap S :vert NERDTreeFind<CR>
autocmd FileType telescope nnoremap <silent><CR> <cmd>lua require('telescope.actions').select_default{layout_strategy='horizontal', mirror=false}<CR>
nnoremap <leader>q :q<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>r :NERDTreeRefresh<CR>
nnoremap <leader>n :tabnew<CR>
syntax on
set number
set relativenumber
colorscheme solarized8_flat
set autoindent
set si
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
au FileType java let b:AutoPairs = {'(':')', '[':']', '{':'}'}

au FileType c let b:AutoPairs = {'(':')', '[':']', '{':'}', '\"':'\"'}

au FileType css let b:AutoPairs = {'(':')', '{':'}', '[':']', '\"':'\"', '\'':'\''}

au FileType html let b:AutoPairs = {'<':'>', '\"':'\"', '\'':'\''}

hi Normal guibg=NONE ctermbg=NONE
" use <tab> to trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

if has("termguicolors")
  set termguicolors
  if &t_8f == ''
    " The first characters after the equals sign are literal escape characters.
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
  endif
endif
