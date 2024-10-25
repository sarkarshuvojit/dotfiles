require('settings')
-- setup plugins
require('plugins')
require('maps')

-- TODO: This should go somewhere else
-- setup
require'lspconfig'.pyright.setup{}


-- Disabled providers which I won't be using
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

