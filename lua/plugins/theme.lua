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

-- return {
-- 	"Rrethy/nvim-base16",
-- 	priority = 1000,
-- 	config = function()
-- 		-- Available variants: gorgoroth, bathory, mayhem, khold, burzum
-- 		local variant = "mayhem"
-- 		vim.cmd("colorscheme base16-black-metal-" .. variant)
-- 		local set_hl = vim.api.nvim_set_hl
--
-- 		-- Comments
-- 		set_hl(0, "Comment", { fg = "#6c6c6c", italic = true })
-- 		set_hl(0, "@comment", { fg = "#6c6c6c", italic = true })
--
-- 		set_hl(0, "Normal", { bg = "NONE" })
-- 		set_hl(0, "NormalNC", { bg = "NONE" })
-- 		set_hl(0, "NormalFloat", { bg = "NONE" })
-- 		set_hl(0, "SignColumn", { bg = "NONE" })
-- 		set_hl(0, "EndOfBuffer", { bg = "NONE" })
-- 		set_hl(0, "@string", { fg = "#ffffff", bold = false })
-- 		set_hl(0, "@string.content", { fg = "#ffffff", bold = false })
-- 	end,
-- }
