return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				-- python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				-- rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				json = { "prettierd", "prettier" },
				jsonc = { "prettierd", "prettier" },
				html = { "prettierd" },
				css = { "prettierd" },
				markdown = { "prettierd" },
				yaml = { "prettierd" },
			},
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = false,
			},
		})
	end,
}
