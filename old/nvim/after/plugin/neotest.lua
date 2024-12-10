require("neotest").setup({
	adapters = {
		require("neotest-foundry")({
			foundryCommand = "forge test -vvvv",
		}),
	},
})

vim.keymap.set("n", "<leader>t", "<nop>", { desc = "test" })
vim.keymap.set("n", "<leader>tt", function()
	require("neotest").run.run(vim.fn.expand("%"))
end, { desc = "Test this file" })
vim.keymap.set("n", "<leader>to", function()
	require("neotest").output_panel.toggle()
end, { desc = "Show test output" })
