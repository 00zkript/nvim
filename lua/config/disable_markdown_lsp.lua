-- Desactiva el LSP y formateo para buffers Markdown
autocmd = vim.api.nvim_create_autocmd

autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    -- Detach LSP de todos los clientes activos en este buffer
    for _, client in pairs(vim.lsp.get_active_clients({bufnr = vim.api.nvim_get_current_buf()})) do
      vim.lsp.buf_detach_client(0, client.id)
    end
    -- Desactiva formateo automático
    vim.api.nvim_buf_set_option(0, 'formatexpr', '')
    vim.api.nvim_buf_set_option(0, 'formatprg', '')
  end,
})
