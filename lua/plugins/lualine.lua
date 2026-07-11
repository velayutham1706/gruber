-- return {
-- 	"nvim-lualine/lualine.nvim",
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
-- 		local lualine = require("lualine")
-- 		local lazy_status = require("lazy.status")
--
-- 		-- Custom color theme
-- 		local colors = {
-- 			bg = "#000000",
-- 			fg = "#ffffff",
-- 			yellow = "#e5c07b",
-- 			cyan = "#56b6c2",
-- 			darkblue = "#61afef",
-- 			green = "#98c379",
-- 			orange = "#d19a66",
-- 			violet = "#c678dd",
-- 			magenta = "#c678dd",
-- 			blue = "#61afef",
-- 			red = "#e06c75",
-- 			gray = "#3e4452",
-- 		}
--
-- 		local custom_theme = {
-- 			normal = {
-- 				a = { fg = colors.bg, bg = colors.violet, gui = "bold" },
-- 				b = { fg = colors.fg, bg = colors.gray },
-- 				c = { fg = colors.fg, bg = colors.bg },
-- 			},
-- 			insert = {
-- 				a = { fg = colors.bg, bg = colors.green, gui = "bold" },
-- 			},
-- 			visual = {
-- 				a = { fg = colors.bg, bg = colors.orange, gui = "bold" },
-- 			},
-- 			replace = {
-- 				a = { fg = colors.bg, bg = colors.red, gui = "bold" },
-- 			},
-- 			command = {
-- 				a = { fg = colors.bg, bg = colors.cyan, gui = "bold" },
-- 			},
-- 			inactive = {
-- 				a = { fg = colors.fg, bg = colors.bg },
-- 				b = { fg = colors.fg, bg = colors.bg },
-- 				c = { fg = colors.fg, bg = colors.bg },
-- 			},
-- 		}
--
-- 		lualine.setup({
-- 			options = {
-- 				icons_enabled = false,
-- 				theme = custom_theme,
-- 				component_separators = "",
-- 				section_separators = "",
-- 				disabled_filetypes = { statusline = {}, winbar = {} },
-- 				ignore_focus = {},
-- 				always_divide_middle = true,
-- 				globalstatus = false,
-- 				refresh = { statusline = 1000, tabline = 1000, winbar = 1000 },
-- 			},
-- 			sections = {
-- 				lualine_a = { "" },
-- 				lualine_b = { "", "", "" },
-- 				lualine_c = { "filename" },
-- 				lualine_x = { "branch", "diff", "diagnostics" },
-- 				lualine_y = { "progress" },
-- 				lualine_z = { "location" },
-- 			},
-- 			inactive_sections = {
-- 				lualine_a = {},
-- 				lualine_b = {},
-- 				lualine_c = { "filename" },
-- 				lualine_x = { "location" },
-- 				lualine_y = {},
-- 				lualine_z = {},
-- 			},
-- 			tabline = {},
-- 			winbar = {},
-- 			inactive_winbar = {},
-- 			extensions = {},
-- 		})
-- 	end,
-- }

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		lualine.setup({
			options = {
				icons_enabled = false,
				theme = "auto",
				component_separators = "",
				section_separators = "",
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "" },
				lualine_b = { "", "", "" },
				lualine_c = { "filename" },
				lualine_x = { "branch", "diff", "diagnostics" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
