-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.expandtab = false -- NO convertir tabs a espacios
vim.opt.tabstop = 4 -- Un tab equivale a 4 espacios visuales
vim.opt.shiftwidth = 4 -- Indentación con >> <<
vim.opt.softtabstop = 4 -- Backspace maneja bien el tab

vim.opt.clipboard = "unnamedplus"
vim.g.autoformat = false

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldenable = true

vim.g.root_spec = { "cwd" }


