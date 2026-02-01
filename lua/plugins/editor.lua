-- This file contains the configuration for various Neovim plugins related to the editor.

return {
  {
    -- Plugin: goto-preview
    -- URL: https://github.com/rmagatti/goto-preview
    "rmagatti/goto-preview",
    event = "BufEnter",
    config = true,
    keys = { ... },
  },
  {
    -- Plugin: mini.hipatterns
    -- URL: https://github.com/nvim-mini/mini.hipatterns
    "nvim-mini/mini.hipatterns",
    event = "BufReadPre",
    opts = { ... },
  },
  {
    -- Plugin: git.nvim
    -- URL: https://github.com/dinhhuy258/git.nvim
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = { ... },
  },
  -- {
  --   "CopilotC-Nvim/CopilotChat.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   build = "make tiktoken",
  --   opts = {
  --     window = {
  --       layout = "float",
  --       width = 80,
  --       height = 20,
  --       border = "rounded",
  --       title = "🤖 Copilot Chat",
  --       zindex = 100
  --     },
  --     headers = {
  --       user = "👤 Tú",
  --       assistant = "🤖 Copilot",
  --     },
  --     separator = "━━",
  --     auto_fold = true,
  --     auto_insert_mode = true,
  --   },
  --   config = function(_, opts)
  --     require("CopilotChat").setup(opts)
  --   end,
  -- },
  {
    "github/copilot.vim",
    -- event = "InsertEnter",
    -- config = function()
    --   vim.g.copilot_no_tab_map = true
    --   vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true, desc = "Copilot accept suggestion" })
    -- end,
  }
}

