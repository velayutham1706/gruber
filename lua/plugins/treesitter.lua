return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")

		-- Custom parser config for Blade
		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.blade = {
			install_info = {
				url = "https://github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}

		config.setup({
			ensure_installed = {
				"cpp",
				"c_sharp",
				"javascript",
				"typescript",
				"jsdoc",
				"lua",
				"python",
				"go",
				"html",
				"css",
				"rust",
				"java",
				"php",
				"blade",
				"dart",
				"sql",
				"pascal",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
