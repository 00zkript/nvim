-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- vim.opt.timeoutlen = 1000
-- vim.opt.ttimeoutlen = 0
--

vim.env.PATH = vim.fn.expand("$HOME/.cargo/bin:") .. vim.env.PATH
