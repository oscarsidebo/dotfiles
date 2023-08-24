require('packer').startup(function()
  use 'zchee/deoplete-jedi'
  use 'pangloss/vim-javascript'
  use 'mxw/vim-jsx'
  use 'ctrlpvim/ctrlp.vim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  
  -- Intellisense
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  
  -- Solidity
  use 'tomlion/vim-solidity'
  
  -- Prettier
  use { 'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production' }

  -- Syntax Highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'tikhomirov/vim-glsl'
  
  -- Git Integration
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  
  -- Colors
  use 'morhetz/gruvbox'
  
  -- Html
  use 'mattn/emmet-vim'
  
  -- Snippets
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  
  -- Debugger
  use 'puremourning/vimspector'
  
  -- graphql
  use 'jparise/vim-graphql'
  
  -- Git CoPilot
  use 'github/copilot.vim'
  
  use 'szw/vim-maximizer'
end)

