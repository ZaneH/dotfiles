vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use({ 'wbthomason/packer.nvim' })

	use({
		'debugloop/telescope-undo.nvim',
		requires = { {'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } }
	})

	use({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	})

	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})

	use({ 'sohkai/syntastic-local-solhint' })

	use {
		"nvim-neotest/neotest",
		requires = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"llllvvuu/neotest-foundry"
		}
	}

	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use({'mfussenegger/nvim-dap'})

	use({'ggandor/leap.nvim'})
end)
