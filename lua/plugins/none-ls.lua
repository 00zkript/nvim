-- Permite usar linters y formateadores como fuentes LSP en Neovim
return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      opts.sources = vim.tbl_filter(function(source)
        -- Filtra cualquier linter o formateador relacionado con PHP y Markdown
        local n = string.lower(source.name or "")
        return not (
          n:find("phpcs") or n:find("phpcbf") or n:find("php_cs_fixer") or
          n:find("markdownlint") or n:find("markdownlint%-cli2") or n:find("vale")
        )
    end, opts.sources or {})

      -- Agrega el formateador de prettier para archivos Blade (blade.php)
      local present, nls = pcall(require, "null-ls")
      if present then
        table.insert(opts.sources, nls.builtins.formatting.prettier.with({
          filetypes = { "blade" },
          extra_filetypes = { "blade" },
        }))
      end

  end,
  },
}
