-- Solución extrema: desactiva markdownlint y markdownlint-cli2 por todos los medios conocidos.
local autocmd = vim.api.nvim_create_autocmd

-- Intenta remover linters en nvim-lint si existiera
autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    -- Para nvim-lint:
    if package.loaded['lint'] then
      local lint = require('lint')
      if lint.linters_by_ft then
        lint.linters_by_ft.markdown = {}
      end
    end
    -- Para null-ls/none-ls: Elimina cualquier fuente con markdownlint
    if package.loaded['null-ls'] then
      local nls = require('null-ls')
      local methods = nls.methods or {}
      for _, source in ipairs(nls.get_sources() or {}) do
        local name = (source.name or ''):lower()
        if (name:find('markdownlint') or name:find('markdownlint%-cli2')) and nls.disable then
          pcall(nls.disable, name)
        end
      end
    end
    -- Parche de emergencia para LazyVim y null-ls nuevo
    if package.loaded['none-ls'] then
      local nls = require('none-ls')
      if nls.methods and nls.get_sources then
        for _, source in ipairs(nls.get_sources()) do
          local name = (source.name or ''):lower()
          if name:find('markdownlint') or name:find('markdownlint%-cli2') then
            if nls.disable then pcall(nls.disable, name) end
          end
        end
      end
    end
  end
})
