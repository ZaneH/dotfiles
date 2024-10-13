require("mini.icons").setup({})
require("mini.completion").setup({})

-- Highlight patterns
local hipatterns = require("mini.hipatterns")
hipatterns.setup({
	highlighters = {
		-- Highlight hex codes #00adef
		hex_color = hipatterns.gen_highlighter.hex_color(),
	},
})
