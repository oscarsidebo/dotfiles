require('packer').startup(function()
  use 'zchee/deoplete-jedi'
  use 'pangloss/vim-javascript'
  use 'mxw/vim-jsx'
  use 'ctrlpvim/ctrlp.vim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'szw/vim-maximizer'

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use { 'echasnovski/mini.nvim' }

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
  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- Syntax Highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'tikhomirov/vim-glsl'
  
  -- Git Integration
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  
  -- Colors
  use 'morhetz/gruvbox'

  -- Status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  
  -- Html
  use 'mattn/emmet-vim'
  
  -- Snippets
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  
  -- Debugger
  use 'puremourning/vimspector'
  
  -- graphql
  use 'jparise/vim-graphql'
  
  -- AI
  use 'Exafunction/codeium.vim'

end)

