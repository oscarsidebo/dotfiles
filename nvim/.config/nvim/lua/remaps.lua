vim.g.ctrlp_user_command = {'.git', 'cd %s && git ls-files -co --exclude-standard'}
vim.g.ctrlp_custom_ignore = 'node_modules\\|DS_Store\\|git'

vim.g.mapleader = " "

-- Fugitive mappings
vim.api.nvim_set_keymap('n', '<leader>gd', ':Gvdiffsplit!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gdh', ':diffget //2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gdl', ':diffget //3<CR>', { noremap = true, silent = true })

-- VimSpector config
vim.api.nvim_set_keymap('n', '<Leader>dd', ':call vimspector#Launch()<CR>', { noremap = true, silent = true })
-- (similar mappings for other VimSpector configs...)

-- Prettier
vim.api.nvim_set_keymap('n', '<Leader>pp', ':Prettier<CR>', { noremap = true, silent = true })
vim.g.prettier_autoformat = 1
vim.g.prettier_autoformat_require_pragma = 0


-- UltiSnips Config
vim.g.UltiSnipsEditSplit = "vertical"
-- (similar settings for other UltiSnips configs...)

-- Emmet Config
vim.g.user_emmet_leader_key = '<Tab>'
vim.g.user_emmet_settings = {
    ['javascript.jsx'] = {
        extends = 'jsx'
    }
}

-- Find files using Telescope command-line sugar
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope file_browser<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fr', ':Telescope registers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<cr>', { noremap = true, silent = true })

-- Maximizer
vim.api.nvim_set_keymap('n', '<leader>m', ':MaximizerToggle<cr>', { noremap = true, silent = true })

-- Basic shortcuts
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':vsp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':Ex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })

-- LSP Mappings
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)

