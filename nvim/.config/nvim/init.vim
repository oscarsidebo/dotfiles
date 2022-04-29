call plug#begin('~/.config/nvim/bundle') 
Plug 'zchee/deoplete-jedi' 
Plug 'pangloss/vim-javascript' 
Plug 'mxw/vim-jsx'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Intellisense
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Svelte
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" Solidity
Plug 'tomlion/vim-solidity'

" Prettier
Plug 'dense-analysis/ale'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git Integration
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

" Colors
Plug 'morhetz/gruvbox'

" Html 
Plug 'mattn/emmet-vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Debugger
Plug 'puremourning/vimspector'

" graphql
Plug 'jparise/vim-graphql'

" Git CoPilot
Plug 'github/copilot.vim'

" call PlugInstall to install new plugins
call plug#end()

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

:let mapleader =" "

" Fugutive mappings
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>


" VimSpector config
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>dr :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>di <Plug>VimspectorStepInto
nmap <Leader>do <Plug>VimspectorStepOver




" LSP config
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/plug-config/compe-config.lua
luafile ~/.config/nvim/lua/ts-ls.lua
luafile ~/.config/nvim/lua/cpp-ls.lua

" Prettier Config
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'typescript': ['prettier']
\}

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

" UltiSnips Config
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Emmet Config
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" basic shortcuts
nnoremap <leader>w <cmd>:w<CR>
nnoremap <leader>q <cmd>:q<CR>
nnoremap <leader>v <cmd>:vsp<CR>
nnoremap <leader>e <cmd>:Ex<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>l <C-w>l

" basics
filetype plugin indent on
set number
colorscheme gruvbox
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set nobackup
set noswapfile
set nowrap
set guifont=monospace:h20
set autoindent
set scrolloff=10
set title
syntax enable 




