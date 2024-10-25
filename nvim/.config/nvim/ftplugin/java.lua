local jdtls_path = '/home/shuvojit/Apps/lservers/jdtls/bin/jdtls'
local config = {
    cmd = {
		'/home/shuvojit/Apps/lservers/jdtls/bin/jdtls'
	},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
