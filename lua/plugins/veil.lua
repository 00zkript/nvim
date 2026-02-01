-- Permite gestionar y lanzar comandos desde una interfaz moderna en Neovim
return {
  "Gentleman-Programming/veil.nvim",
  config = function()
    require("veil").setup()
  end,
}
