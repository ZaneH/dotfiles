require("mason-null-ls").setup({
	ensure_installed = {
		"stylua",
		"jq",
		"prettierd",
		"autopep8",
		"rustfmt",
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
