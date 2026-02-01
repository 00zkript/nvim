-- Ejemplo de configuración personalizada.
-- Añade aquí plugins propios o configuraciones avanzadas.
return {


  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        theme = "onedark", -- El tema clásico de VS Code
        options = {
          cursorline = true, -- Resalta la línea actual como en VS Code
          transparency = false, -- Mantener el fondo gris oscuro original
          terminal_colors = true,
        },
        styles = {
          types = "NONE", -- VS Code no suele usar cursivas en tipos por defecto
          methods = "NONE",
          variables = "NONE",
        },
      })
      vim.cmd("colorscheme onedark")
    end,
  },

  -- 3. SUSTITUCIÓN INTELIGENTE (Libro -> Book, libro -> book)
  { "tpope/vim-abolish" },

  -- 4. MULTICURSORES (Estilo VS Code Ctrl+D)
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      -- Evitar conflictos con algunos atajos de LazyVim
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",
        ["Find Subword Under"] = "<C-d>",
      }
    end,
  },

  -- 5. CAMBIO DE CASO (camelCase, snake_case)
  {
    "johmsalas/text-case.nvim",
    config = function()
      require("textcase").setup({})
    end,
    keys = { "ga" }, -- Comando: ga. para abrir menú
  },

  -- 6. ALINEACIÓN DE CURSORES O TEXTO
  {
    "nvim-mini/mini.align",
    version = false,
    config = function()
      require("mini.align").setup()
    end,
  },
}
