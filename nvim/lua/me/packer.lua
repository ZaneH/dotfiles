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
	-- use({ "projekt0n/github-nvim-theme" })
	use({ "typicode/bg.nvim" })
	use({ "RRethy/vim-illuminate" })
	use({ "folke/todo-comments.nvim", requirements = { "nvim-lua/plenary.nvim" } })
	use({ "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim" } })
	use({ "stevearc/dressing.nvim" })
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use({ "onsails/lspkind.nvim" })

	use({
		"debugloop/telescope-undo.nvim",
		requires = { { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } } },
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Completion
	use({ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" })
	use({ "neovim/nvim-lspconfig" })
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "David-Kunz/cmp-npm", requires = { "nvim-lua/plenary.nvim" } })

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

	use({ "ray-x/go.nvim" })

	use({ "ThePrimeagen/harpoon" })

	use({ "folke/zen-mode.nvim" })

	-- Snippets
	use({
		"L3MON4D3/LuaSnip",
		tag = "v2.*",
		run = "make install_jsregexp",
		requires = { "rafamadriz/friendly-snippets" },
	})
	use({ "saadparwaiz1/cmp_luasnip" })

	use({ "stevearc/oil.nvim" })

	use({ "windwp/nvim-autopairs" })

	use({
		"epwalsh/obsidian.nvim",
		tag = "*",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use({ "smjonas/inc-rename.nvim" })

	use({ "echasnovski/mini.nvim" })

	use({ "kristijanhusak/vim-dadbod-ui", requires = { "tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion" } })
end)
