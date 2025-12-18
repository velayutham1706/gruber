-- return {
-- 	"projekt0n/github-nvim-theme",
-- 	name = "github-theme",
-- 	priority = 1000,
-- 	config = function()
-- 		require("github-theme").setup({
-- 			options = {
-- 				styles = {
-- 					comments = "NONE",
-- 					keywords = "NONE",
-- 					functions = "NONE",
-- 					variables = "NONE",
-- 				},
-- 			},
-- 			palettes = {
-- 				github_dark = {
-- 					bg0 = "#000000", -- main background
-- 					bg1 = "#000000",
-- 					bg2 = "#000000",
-- 					bg3 = "#000000",
-- 					bg4 = "#000000",
-- 				},
-- 			},
--
-- 			groups = {
-- 				all = {
-- 					Normal = { bg = "#000000" },
-- 					NormalNC = { bg = "#000000" },
-- 					SignColumn = { bg = "#000000" },
-- 					EndOfBuffer = { bg = "#000000" },
-- 					LineNr = { bg = "#000000" },
-- 					CursorLineNr = { bg = "#000000" },
-- 				},
-- 			},
-- 		})
-- 		vim.cmd("colorscheme github_dark_default")
-- 	end,
-- }

return {
	"blazkowolf/gruber-darker.nvim",
	priority = 1000,
	config = function()
		require("gruber-darker").setup({
			bold = false,
			invert = {
				signs = false,
				tabline = false,
				visual = false,
			},
			italic = {
				string = false,
				comments = false,
				operators = false,
				folds = false,
			},
			undercurl = true,
			underline = false,
		})
		vim.cmd("colorscheme gruber-darker")
	end,
}
