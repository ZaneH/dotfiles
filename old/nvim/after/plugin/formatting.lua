require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "autopep8", "isort", "black", stop_after_first = true },
		-- You can customize some of the format options for the filetype (:help conform.format)
		rust = { "rustfmt", lsp_format = "fallback" },
		-- Conform will run the first available formatter
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		go = { "goimports", "gofmt", lsp_format = "fallback" },
		sql = {}, -- SQL formatters are buggy w/ TimescaleDB
	},
	format_on_save = {
		-- I recommend these options. See :help conform.format for details.
		lsp_format = "fallback",
		timeout_ms = 500,
	},
	format_after_save = {
		lsp_format = "fallback",
	},
	-- Set the log level. Use `:ConformInfo` to see the location of the log file.
	log_level = vim.log.levels.ERROR,
	-- Conform will notify you when a formatter errors
	notify_on_error = true,
	-- Conform will notify you when no formatters are available for the buffer
	notify_no_formatters = true,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
