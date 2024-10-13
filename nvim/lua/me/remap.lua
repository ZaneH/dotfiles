vim.g.mapleader = " "

-- Use "jk" in insert mode to enter Normal mode
vim.keymap.set("i", "jk", "<Esc>")

-- Save with <Space>w
vim.keymap.set("n", "<leader>w", ":w<cr>")

-- Jump vim panels with hjkl
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Move line up/down
vim.keymap.set("v", "<A-j>", ":m '<+1<cr>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", opts)

-- Show diagnostics
vim.keymap.set("n", "[d", function()
	vim.diagnostic.goto_prev()
end, opts)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.goto_next()
end, opts)

vim.keymap.set("n", "<leader>qq", ":qa<cr>", { desc = "Quit nvim" })
