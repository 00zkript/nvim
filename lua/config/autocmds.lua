-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
--
-- Formateo automático con Prettier para archivos Blade al guardar
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.blade.php",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
--
dofile(vim.fn.stdpath('config')..'/lua/config/markdown_highlight.lua')
--

-- Desactiva LSP y formateo en buffers Markdown
dofile(vim.fn.stdpath('config')..'/lua/config/disable_markdown_lsp.lua')
-- Apaga todos los linters tipo markdownlint y markdownlint-cli2 (nvim-lint, null-ls etc)
dofile(vim.fn.stdpath('config')..'/lua/config/disable_markdown_linters.lua')





