require("which-key").setup({
	preset = "modern",
})

vim.keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end)

vim.keymap.set("n", "<leader>p", "<nop>", { desc = "project" })
