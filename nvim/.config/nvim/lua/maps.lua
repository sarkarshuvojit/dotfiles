vim.g.mapleader = " "

vim.keymap.set(
	{'i', 'n', 'o'}, 
	'ii', '<Esc>'
)

vim.keymap.set(
	{'n', 'o'}, 
	'<C-P>', '<cmd>Telescope find_files<cr>'
)

vim.keymap.set( 
	{'n'}, 
	'<leader>nt', '<cmd>NERDTreeToggle<cr>',
	{ noremap = true }
)

vim.keymap.set('n', '<leader>gs', ':LazyGit<cr>')

-- jump to definition
vim.keymap.set('n','<leader>jd', vim.lsp.buf.declaration, { noremap = true })

-- jump to references
vim.keymap.set('n','<leader>jr', vim.lsp.buf.implementation, { noremap = true })

-- smart rename symbol
vim.keymap.set('n','<leader>rs', vim.lsp.buf.rename, { noremap = true })

-- Use K to show documentation in preview window.
vim.keymap.set('n', '<silent>K', vim.lsp.buf.signature_help, { noremap = true })

-- show code action
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true })
