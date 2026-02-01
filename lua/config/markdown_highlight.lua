-- Neutraliza cualquier banda/fondo violento en títulos de Markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false
    vim.diagnostic.config({ virtual_text = false }, vim.api.nvim_get_current_buf())
    local bg = vim.api.nvim_get_hl_by_name('Normal', true).background or '#1e222a'
    local groups = {
      -- highlights de headlines.nvim y render-markdown
      "Headline1", "Headline2", "Headline3", "Headline4", "Headline5", "Headline6",
      "renderMarkdownHeadingLine1", "renderMarkdownHeadingLine2", "renderMarkdownHeadingLine3", "renderMarkdownHeadingLine4", "renderMarkdownHeadingLine5", "renderMarkdownHeadingLine6",
      "renderMarkdownHeadingBg", "HeadlineLine", "markdownTitleLine", "markdownHeadingLine",
      -- plus backups de error, diff, search, etc
      "DiffAdd", "DiffChange", "DiffText", "Error", "ErrorMsg", "SpellBad", "Search", "IncSearch"
    }
    for _, group in ipairs(groups) do
      pcall(vim.api.nvim_set_hl, 0, group, { bg = bg, fg='#e0e0e0', bold=false, underline=false, undercurl=false })
    end
    -- O dejar incluso bg = NONE
    for _, group in ipairs(groups) do
      pcall(vim.api.nvim_set_hl, 0, group, { bg = 'NONE', fg='#e0e0e0', bold=false, underline=false, undercurl=false })
    end
  end
})
