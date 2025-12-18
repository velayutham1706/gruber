return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		default_file_explorer = true,
		columns = {
			"icon",
			"permissions",
			"size",
			"mtime",
		},
		view_options = {
			show_hidden = true,
		},
		float = {
			padding = 2,
			max_width = 80,
			max_height = 40,
			border = "rounded",
			win_options = {
				winblend = 10,
			},
		},
		keymaps = {
			["<CR>"] = "actions.select",
			["q"] = "actions.close",
			["<C-h>"] = "actions.toggle_hidden",
			["<C-r>"] = "actions.refresh",
		},
	},
}
