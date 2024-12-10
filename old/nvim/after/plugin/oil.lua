require("oil").setup()

vim.keymap.set("n", "<leader>pv", function()
	vim.cmd([[Oil]])
end, { desc = "Open project view" })
vim.keymap.set("n", "<leader>pV", function()
	vim.cmd([[Oil --float]])
end, { desc = "Open project view (float)" })
