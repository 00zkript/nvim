-- ~/.config/nvim/lua/plugins/php.lua
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
         -- otros servidores que quieras agregar aquí

      },
    },
  },
}
