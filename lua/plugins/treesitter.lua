return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		branch = "master",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				modules = {},
				auto_install = true,
				ignore_install = {},
				ensure_installed = {
					"bash",
					"c",
					"css",
					"diff",
					"html",
					"javascript",
					"java",
					"jsdoc",
					"json",
					"jsonc",
					"lua",
					"luadoc",
					"luap",
					"markdown",
					"markdown_inline",
					"printf",
					"python",
					"query",
					"regex",
					"rust",
					"toml",
					"tsx",
					"typescript",
					"vim",
					"vimdoc",
					"xml",
					"yaml",
				},
				sync_install = false,
				highlight = { enable = true },
				-- indent = { enable = true },
			})
		end,
	},
}
