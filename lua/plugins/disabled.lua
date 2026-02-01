-- Plugins deshabilitados (disabled) para Neovim.
-- Consulta cada plugin en su URL para ver detalles y documentación.
-- Ejemplo:
-- bufferline.nvim: https://github.com/akinsho/bufferline.nvim
-- avante.nvim: https://github.com/yetone/avante.nvim

return {
  {
    -- Plugin: bufferline.nvim
    -- URL: https://github.com/akinsho/bufferline.nvim
    -- Description: A snazzy buffer line (with tabpage integration) for Neovim.
    "akinsho/bufferline.nvim",
    enabled = false, -- Disable this plugin
  },
  {
    -- Plugin para mejorar la experiencia de edición en Neovim
    -- URL: https://github.com/yetone/avante.nvim
    -- Description: Este plugin ofrece una serie de mejoras y herramientas para optimizar la edición de texto en Neovim.
    "yetone/avante.nvim",
    enabled = false,
  },
  {
    "NickvanDyke/opencode.nvim",
    enabled = false,
  },
  {
    "olimorris/codecompanion.nvim",
    enabled = false,
  },
  {
    "tris203/precognition.nvim",
    enabled = false,
  },

  {
    "sphamba/smear-cursor.nvim",
    enabled = true,
  },
  {
    -- Plugin: claude-code.nvim
    -- URL: https://github.com/greggh/claude-code.nvim
    -- Description: Neovim integration for Claude Code AI assistant
    "coder/claudecode.nvim",
    enabled = true,
  },
}
