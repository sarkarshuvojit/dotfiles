vim.g.mapleader = " "

vim.keymap.set(
	{'i', 'n', 'o'}, 
	'ii', '<Esc>'
)

vim.keymap.set(
	{'n', 'o'}, 
	'<C-P>', '<cmd>Telescope find_files<cr>'
)

vim.keymap.set( {'n'}, '<leader>tt', '<cmd>NERDTreeToggle<cr>')

vim.keymap.set('n', '<leader>gs', ':LazyGit<cr>')

-- jump to definition
-- vim.keymap.set('n','<leader>jd', vim.lsp.buf.declaration)

-- jump to references
-- vim.keymap.set('n','<leader>jr', vim.lsp.buf.implementation)

-- smart rename symbol
-- vim.keymap.set('n','<leader>rs', vim.lsp.buf.rename)

-- Use K to show documentation in preview window.
-- vim.keymap.set('n', '<silent> K', vim.lsp.buf.signature_hlep)

-- show code action
-- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
