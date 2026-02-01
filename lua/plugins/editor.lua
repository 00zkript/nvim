return {
  -- Permite previsualizar definiciones y métodos sin salir del buffer
  {
    "rmagatti/goto-preview",
    event = "BufEnter",
    config = true,
    keys = { ... },
  },
  -- Resalta patrones usando expresiones regulares avanzadas
  {
    "nvim-mini/mini.hipatterns",
    event = "BufReadPre",
    opts = { ... },
  },
  -- Añade utilidades para trabajar con Git desde Neovim
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = { ... },
  },
  -- Añade autocompletado AI mediante GitHub Copilot
  {
    "github/copilot.vim",
    -- event = "InsertEnter",
    -- config = function()
    --   vim.g.copilot_no_tab_map = true
    --   vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true, desc = "Copilot accept suggestion" })
    -- end,
  }
}

