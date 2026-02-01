-- Añade una colección de snippets comunitarios para múltiples lenguajes
return {
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
