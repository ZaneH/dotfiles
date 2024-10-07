require("mason-tool-installer").setup({
	ensure_installed = {
		"prettierd",
		"stylua",
		"isort",
		"black",
		"pylint",
		"eslint_d",
		"typescript-language-server",
		"sqls",
		"gopls",
	},
})

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
