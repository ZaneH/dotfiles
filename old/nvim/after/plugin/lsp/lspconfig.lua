---
-- LSP configuration
---
local lsp_zero = require("lsp-zero")

local lsp_attach = function(client, bufnr)
	local opts = { buffer = bufnr }

	vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
	vim.keymap.set("n", "gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>", opts)
	vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
	vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
	vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
	vim.keymap.set("n", "gr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>", opts)
	vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
	vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
	vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
end

lsp_zero.extend_lspconfig({
	sign_text = true,
	lsp_attach = lsp_attach,
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

configs.solidity = {
	default_config = {
		cmd = { "vscode-solidity-server", "--stdio" },
		filetypes = { "solidity" },
		root_dir = lspconfig.util.find_git_ancestor,
		single_file_support = true,
	},
}

-- You'll find a list of language servers here:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
require("lspconfig").solidity.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").ts_ls.setup({})
require("lspconfig").lua_ls.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").sqls.setup({
	on_attach = function(client, _)
		-- without this, there was white-space issues
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end,
})
require("lspconfig").bashls.setup({})
require("lspconfig").ocamllsp.setup({})
