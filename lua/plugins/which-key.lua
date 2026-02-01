-- Muestra las combinaciones de teclas disponibles en Neovim

return {

  "folke/which-key.nvim",

   event = "VeryLazy", -- Se carga solo cuando Neovim está inactivo

  init = function()
     -- Tiempo de espera para atajos de teclas
    vim.o.timeout = true
     vim.o.timeoutlen = 300 -- Tiempo de espera (ms)
  end,

  keys = {
    {
       -- Muestra menú de combinaciones disponibles
      "<leader>?",
      function()
         require("which-key").show({ global = false }) -- Muestra las combinaciones locales disponibles
      end,
    },
    {
       -- Grupo para comandos de Obsidian
      "<leader>o",
      group = "Obsidian",
    },
  },
}
