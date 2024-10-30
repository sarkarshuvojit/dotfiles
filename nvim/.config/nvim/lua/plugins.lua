return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'mfussenegger/nvim-jdtls'
	use 'scottmckendry/cyberdream.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
	use { 'preservim/nerdtree' }
    use { 'Xuyuanp/nerdtree-git-plugin' }
	-- nvim v0.7.2
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

    -- To manage lsp's better. 
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    
    use {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "graphql",
            },
        }
    }

end)


