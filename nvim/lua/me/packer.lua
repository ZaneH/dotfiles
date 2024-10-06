vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim" })

	use({ "williamboman/mason.nvim" })

	use({ "jay-babu/mason-null-ls.nvim", requires = { "nvimtools/none-ls.nvim" }})

	use({
		"debugloop/telescope-undo.nvim",
		requires = { { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } } },
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use({ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" })
	use({ "neovim/nvim-lspconfig" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })

	use({ "sohkai/syntastic-local-solhint" })

	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"llllvvuu/neotest-foundry",
		},
	})

	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use({ "mfussenegger/nvim-dap" })

	use({ "ggandor/leap.nvim" })

	use({ "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim" } })

	use({ "folke/which-key.nvim" })

	use({ "folke/tokyonight.nvim" })

	use({ "typicode/bg.nvim" })

	use({ "stevearc/conform.nvim" })

	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } })
end)
