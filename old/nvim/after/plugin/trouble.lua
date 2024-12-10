require("trouble").setup({
	modes = {
		preview_float = {
			mode = "diagnostics",
			preview = {
				type = "float",
				relative = "editor",
				border = "rounded",
				title = "Preview",
				title_pos = "center",
				position = { 0, -2 },
				size = { width = 0.3, height = 0.3 },
				zindex = 200,
			},
		},
	},
})

vim.keymap.set("n", "<leader>x", "<nop>", { desc = "trouble" })
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>xX",
	"<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
	{ desc = "Buffer Diagnostics (Trouble)" }
)

vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
