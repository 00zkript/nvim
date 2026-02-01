-- Configuración personalizada de plugins modificados por el usuario

return {
  -- Muestra diagnósticos en una lista ordenada
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true }, -- Utiliza iconos de diagnóstico
  },

  -- Visualiza los símbolos del buffer en forma de árbol
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline", -- Comando para abrir el árbol de símbolos
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Abrir símbolos" } },
    config = true,
  },


}
