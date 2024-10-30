local util = require 'lspconfig.util'

local lspconfig = require 'lspconfig'
local on_attach = function(client, bufnr)
    print("[ts_ls.on_attach]: LSP started.");
    -- jump to definition
    vim.keymap.set('n','<leader>jd', vim.lsp.buf.definition, { noremap = true, buffer = bufnr , silent = false})

    -- jump to references
    vim.keymap.set('n','<leader>jr', vim.lsp.buf.implementation, { noremap = true, buffer = bufnr})

    -- smart rename symbol
    vim.keymap.set('n','<leader>rs', vim.lsp.buf.rename, { noremap = true, buffer = bufnr})

    -- Use K to show documentation in preview window.
    vim.keymap.set('n', '<silent>K', vim.lsp.buf.signature_help, { noremap = true, buffer = bufnr})

    -- show code action
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, buffer = bufnr})

end

lspconfig.ts_ls.setup {
    on_attach = on_attach,
    root_dir = function (pattern)
        local cwd  = vim.loop.cwd();
        local root = util.root_pattern("package.json", "tsconfig.json", ".git")(pattern);
        return root or cwd;
    end,
    autostart = true
}
