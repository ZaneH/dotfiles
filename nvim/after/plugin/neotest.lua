require("neotest").setup({
	adapters = {
		require('neotest-foundry')({
			foundryCommand = "forge test", -- string | function
			foundryConfig = nil, -- string | function
			env = {}, -- table | function
			cwd = function () return lib.files.match_root_pattern("foundry.toml") end, -- string | function
			filterDir = function(name)
				return (
				name ~= "node_modules"
				and name ~= "cache"
				and name ~= "out"
				and name ~= "artifacts"
				and name ~= "docs"
				and name ~= "doc"
				and name ~= "lib"
				)
			end,
		})
	}
})
