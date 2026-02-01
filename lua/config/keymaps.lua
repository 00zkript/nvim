local map = vim.keymap.set

-- Copilot inline suggestion accept (Insert mode)
map("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true, desc = "Copilot accept suggestion" })

-- Navegación y gestión de buffers/tabs estilo VSCode
map("n", "<C-PageUp>", ":bprevious<CR>", { desc = "Buffer anterior", silent = true })
map("n", "<C-PageDown>", ":bnext<CR>", { desc = "Buffer siguiente", silent = true })
map("n", "<C-Up>", ":bprevious<CR>", { desc = "Buffer anterior (alt)", silent = true })
map("n", "<C-Down>", ":bnext<CR>", { desc = "Buffer siguiente (alt)", silent = true })

map("n", "<C-n>", ":enew<CR>", { desc = "Nuevo buffer/archivo", silent = true })
map("n", "<C-t>", ":tabnew<CR>", { desc = "Nueva pestaña/tab", silent = true })
map("n", "<C-w>", ":bdelete<CR>", { desc = "Cerrar buffer", silent = true })
map("n", "<C-S-w>", ":tabclose<CR>", { desc = "Cerrar pestaña/tab", silent = true })
map("n", "<C-s>", ":write<CR>", { desc = "Guardar buffer", silent = true })
map("n", "<C-p>", ":Telescope buffers<CR>", { desc = "Buscar buffer", silent = true })
map("n", "<C-S-PageUp>", ":tabprevious<CR>", { desc = "Tab anterior", silent = true })
map("n", "<C-S-PageDown>", ":tabnext<CR>", { desc = "Tab siguiente", silent = true })
map("n", "<C-\\>", ":vsplit<CR>", { desc = "Dividir vertical", silent = true })
map("n", "<leader>-", ":split<CR>", { desc = "Dividir horizontal", silent = true })
map("n", "<C-q>", ":close<CR>", { desc = "Cerrar ventana/split", silent = true })
map("n", "<leader>1", "1gt", { desc = "Ir a pestaña 1", silent = true })
map("n", "<leader>2", "2gt", { desc = "Ir a pestaña 2", silent = true })
map("n", "<leader>3", "3gt", { desc = "Ir a pestaña 3", silent = true })

-- Eliminar todos los buffers menos el actual
map("n", "<leader>bq", ":%bdelete|edit #|bdelete #<CR>", { desc = "Delete other buffers but the current one", silent = true })
