local builtin = require("telescope.builtin")

require("telescope").load_extension("undo")
require("telescope").load_extension("harpoon")

vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Telescope git files" })
vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>u", function()
	vim.cmd([[Telescope undo]])
end, { desc = "Undo tree" })
