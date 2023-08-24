call plug#begin('~/.config/nvim/bundle')
Plug 'zchee/deoplete-jedi'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Intellisense
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" Solidity
Plug 'tomlion/vim-solidity'

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tikhomirov/vim-glsl'

" Git Integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" Colors
Plug 'morhetz/gruvbox'

" Html
Plug 'mattn/emmet-vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Debugger
Plug 'puremourning/vimspector'

" graphql
Plug 'jparise/vim-graphql'

" Git CoPilot
Plug 'github/copilot.vim'

Plug 'szw/vim-maximizer'  

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

" Prettier
nnoremap <Leader>pp :Prettier<CR> 
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" LSP config
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/lua/ts-ls.lua
luafile ~/.config/nvim/lua/cpp-ls.lua
luafile ~/.config/nvim/lua/nvim-cmp.lua


" UltiSnips Config
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

 
" Emmet Config
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fr <cmd>Telescope registers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Maximizer 
nnoremap <leader>m <cmd>:MaximizerToggle<cr>

" basic shortcuts
nnoremap <leader>w <cmd>:w<CR>
nnoremap <leader>q <cmd>:q<CR>
nnoremap <leader>v <cmd>:vsp<CR>
nnoremap <leader>e <cmd>:Ex<CR>
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j 
nnoremap <leader>k <C-w>k 

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
