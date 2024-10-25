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
end)
