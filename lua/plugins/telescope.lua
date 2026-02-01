return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim"
    },
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {},
          }
        },
      }
      require("telescope").load_extension("ui-select")
      vim.ui.select = require("telescope").extensions["ui-select"].select
    end
  }
}
