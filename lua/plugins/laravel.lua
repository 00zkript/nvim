-- Añade utilidades y comandos para proyectos Laravel dentro de Neovim
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
          pickers = { provider = "telescope" }
        },
      })
    end,
    keys = {
      { "<leader>ll", function() require("laravel").pickers.laravel() end, desc = "Laravel: Abrir selector de Laravel" },
      { "<leader>la", function() require("laravel").pickers.artisan() end, desc = "Laravel: Abrir selector de Artisan" },
      { "<leader>lt", function() require("laravel").commands.run("actions") end, desc = "Laravel: Abrir selector de acciones" },
      { "<leader>lr", function() require("laravel").pickers.routes() end, desc = "Laravel: Abrir selector de rutas" },
      { "<leader>lh", function() require("laravel").run("artisan docs") end, desc = "Laravel: Abrir documentación" },
      { "<leader>lm", function() require("laravel").pickers.make() end, desc = "Laravel: Abrir selector de generación" },
      { "<leader>lc", function() require("laravel").pickers.commands() end, desc = "Laravel: Abrir selector de comandos" },
      { "<leader>lo", function() require("laravel").pickers.resources() end, desc = "Laravel: Abrir selector de recursos" },
      { "<leader>lp", function() require("laravel").commands.run("command_center") end, desc = "Laravel: Abrir centro de comandos" },
      { "<leader>lu", function() require("laravel").commands.run("hub") end, desc = "Laravel: Abrir hub de Artisan" },
    },
  },
  -- {
  --   "jwalton512/vim-blade",
  --   ft = "blade",
  -- },
}
