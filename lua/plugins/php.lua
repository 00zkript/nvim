-- ~/.config/nvim/lua/plugins/php.lua
-- Permite soporte de lenguaje para PHP (PHPactor) y Lua (LuaLS) en Neovim
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = {
          enabled = true,
        },
         lua_ls = {
           settings = {
             Lua = {
               diagnostics = {
                 globals = { "vim" },
               },
             },
           },
         },
         -- Aquí puedes agregar más servidores LSP que necesites

      },
    },
  },
}
