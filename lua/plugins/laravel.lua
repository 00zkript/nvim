return {
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/nvim-nio",
      "tpope/vim-dotenv"
    },
    ft = { "php", "blade" },
    cmd = { "Laravel" },
    config = function()
      require("laravel").setup({
        php_path = "/home/henry-pc/.phpenv/shims/php",
        root_patterns = { "artisan", "composer.json", ".env" },
        features = {
          pickers = { provider = "snacks" }
        },
      })
    end,
    keys = {
      { "<leader>ll", function() require("laravel").pickers.laravel() end, desc = "Laravel: Open Laravel Picker" },
      { "<leader>la", function() require("laravel").pickers.artisan() end, desc = "Laravel: Open Artisan Picker" },
      { "<leader>lt", function() require("laravel").commands.run("actions") end, desc = "Laravel: Open Actions Picker" },
      { "<leader>lr", function() require("laravel").pickers.routes() end, desc = "Laravel: Open Routes Picker" },
      { "<leader>lh", function() require("laravel").run("artisan docs") end, desc = "Laravel: Open Documentation" },
      { "<leader>lm", function() require("laravel").pickers.make() end, desc = "Laravel: Open Make Picker" },
      { "<leader>lc", function() require("laravel").pickers.commands() end, desc = "Laravel: Open Commands Picker" },
      { "<leader>lo", function() require("laravel").pickers.resources() end, desc = "Laravel: Open Resources Picker" },
      { "<leader>lp", function() require("laravel").commands.run("command_center") end, desc = "Laravel: Open Command Center" },
      { "<leader>lu", function() require("laravel").commands.run("hub") end, desc = "Laravel Artisan hub" },
    },
  },
  -- {
  --   "jwalton512/vim-blade",
  --   ft = "blade",
  -- },
}
