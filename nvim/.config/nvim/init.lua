require("core")

require("remaps")
require("cpp-ls")
require("nvim-cmp")
require("ts-ls")
require("statusline")
require("web-devicons")
require("null-ls-config")
require("prettier-config")

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").lazy(lazypath)
end

-- TODO: convert plugins to use lazy vs packer

vim.opt.rtp:prepend(lazypath)
require("plugins")
