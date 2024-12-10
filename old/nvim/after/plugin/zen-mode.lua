vim.keymap.set("n", "<leader>Z", function()
	require("zen-mode").toggle({
		window = {
			width = 0.85,
		},
		plugins = {
			tmux = { enabled = true },
		},
	})
end, { desc = "Toggle zen mode" })
