vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim" })

	use({ "williamboman/mason.nvim" })

	-- Automatically install formatters, linters and daps
	use({ "WhoIsSethDaniel/mason-tool-installer.nvim", requires = "williamboman/mason-lspconfig.nvim" })
	use({ "jay-babu/mason-null-ls.nvim", requires = "williamboman/mason-lspconfig.nvim" })
	use({ "jay-babu/mason-nvim-dap.nvim", requires = "williamboman/mason-lspconfig.nvim" })
	use({ "williamboman/mason-lspconfig.nvim", requires = "williamboman/mason-lspconfig.nvim" })

	-- Cosmetic
	use({ "folke/tokyonight.nvim" })
	use({ "typicode/bg.nvim" })

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

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

	-- Unsure if this is utilized...
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

	use({ "stevearc/conform.nvim" })

	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } })

	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use({ "folke/trouble.nvim" })
end)
