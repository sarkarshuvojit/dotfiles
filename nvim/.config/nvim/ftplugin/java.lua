local jdtls = require('jdtls')
local root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew', 'pom.xml'})

-- Change this path to where you have downloaded lombok.jar
local lombok_jar = '/home/shuvojit/Apps/lservers/jdtls/bin/lombok.jar'  -- Replace with your lombok.jar path
local jdtls_path = '/home/shuvojit/Apps/lservers/jdtls'       -- Replace with your jdtls installation path

local on_attach = function(client, bufnr)
    print("[ts_ls.on_attach]: LSP started.");
    -- jump to definition
    vim.keymap.set('n','<leader>jd', vim.lsp.buf.definition, { noremap = true, buffer = bufnr , silent = false})

    -- jump to references
    vim.keymap.set('n','<leader>jr', vim.lsp.buf.references, { noremap = true, buffer = bufnr})

    -- smart rename symbol
    vim.keymap.set('n','<leader>rs', vim.lsp.buf.rename, { noremap = true, buffer = bufnr})

    -- Use K to show documentation in preview window.
    vim.keymap.set('n', '<silent>K', vim.lsp.buf.signature_help, { noremap = true, buffer = bufnr})

    -- show code action
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, buffer = bufnr})

end

local config = {
  cmd = {
    '/home/shuvojit/.sdkman/candidates/java/17.0.2-tem/bin/java',
	"-Declipse.application=org.eclipse.jdt.ls.core.id1",
	"-Dosgi.bundles.defaultStartLevel=4",
	"-Declipse.product=org.eclipse.jdt.ls.core.product",
	"-Dlog.protocol=true",
	"-Dlog.level=ALL",
	"-Xmx1g",
	-- '-Xbootclasspath/a:'.. lombok_jar, 
	"--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",
    '-javaagent:' .. lombok_jar,
    '-jar', jdtls_path .. '/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar',
    '-configuration', jdtls_path .. '/config_linux',
    '-data', root_dir
  },
  on_attach = on_attach,
  autostart = true
}

-- This starts the server according to the above configuration
jdtls.start_or_attach(config)

-- Add any additional keymaps here
-- vim.keymap.set('n', '<A-o>', jdtls.organize_imports, { buffer = true })
-- vim.keymap.set('n', 'crv', jdtls.extract_variable, { buffer = true })
-- vim.keymap.set('v', 'crv', [[<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>]], { buffer = true })
-- vim.keymap.set('n', 'crc', jdtls.extract_constant, { buffer = true })
-- vim.keymap.set('v', 'crc', [[<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>]], { buffer = true })
-- vim.keymap.set('v', 'crm', [[<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>]], { buffer = true })
