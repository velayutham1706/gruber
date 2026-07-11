-- return {
-- 	"projekt0n/github-nvim-theme",
-- 	name = "github-theme",
-- 	priority = 1000,
-- 	config = function()
-- 		require("github-theme").setup({
-- 			options = {
-- 				styles = {
-- 					comments = "italic",
-- 					keywords = "NONE",
-- 					functions = "NONE",
-- 					variables = "NONE",
-- 				},
-- 			},
-- 			palettes = {
-- 				github_dark_default = {
-- 					bg0 = "#000000", -- Remove any spaces before the #
-- 					bg1 = "#000000",
-- 					bg2 = "#000000",
-- 					bg3 = "#000000",
-- 					bg4 = "#000000",
-- 				},
-- 			},
-- 			groups = {
-- 				all = {
-- 					Normal = { bg = "#000000" }, -- Make sure no spaces here either
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

-- return {
-- 	"blazkowolf/gruber-darker.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruber-darker").setup({
-- 			bold = false,
-- 			invert = {
-- 				signs = false,
-- 				tabline = false,
-- 				visual = false,
-- 			},
-- 			italic = {
-- 				string = false,
-- 				comments = false,
-- 				operators = false,
-- 				folds = false,
-- 			},
-- 			undercurl = true,
-- 			underline = false,
-- 		})
-- 		vim.cmd("colorscheme gruber-darker")
-- 	end,
-- }

return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			styles = {
				bold = false,
				italic = false,
				transparency = true,
			},
		})

		vim.cmd("colorscheme rose-pine")

		local set_hl = vim.api.nvim_set_hl

		-- Transparency
		set_hl(0, "Normal", { bg = "NONE" })
		set_hl(0, "NormalNC", { bg = "NONE" })
		set_hl(0, "NormalFloat", { bg = "NONE" })
		set_hl(0, "SignColumn", { bg = "NONE" })
		set_hl(0, "EndOfBuffer", { bg = "NONE" })
		set_hl(0, "@string", { fg = "#ffffff", bold = false })
		set_hl(0, "@string.content", { fg = "#ffffff", bold = false })

		-- Disable italics globally
		local function disable_italics()
			set_hl(0, "Italic", { italic = false })
			local highlight_groups = vim.fn.getcompletion("", "highlight")
			for _, group in ipairs(highlight_groups) do
				local hl = vim.api.nvim_get_hl(0, { name = group })
				if hl.italic then
					local new_hl = vim.deepcopy(hl)
					new_hl.italic = false
					set_hl(0, group, new_hl)
				end
			end

			local common_italic_groups = {
				"Keyword",
				"Conditional",
				"Statement",
				"PreProc",
				"Identifier",
				"Function",
				"Type",
				"String",
				"Character",
				"Boolean",
				"Number",
				"Float",
				"TSKeyword",
				"TSConditional",
				"TSFunction",
				"TSParameter",
				"TSProperty",
				"TSVariable",
			}

			for _, group in ipairs(common_italic_groups) do
				vim.cmd(string.format("hi %s gui=NONE cterm=NONE", group))
			end
		end

		disable_italics()

		-- Re-enable italics for comments only
		-- set_hl(0, "Comment", { italic = true })
		-- set_hl(0, "SpecialComment", { italic = true })
		-- set_hl(0, "@comment", { italic = true })
		-- set_hl(0, "@comment.documentation", { italic = true })

		vim.api.nvim_create_autocmd("ColorScheme", {
			pattern = "*",
			callback = function()
				set_hl(0, "Normal", { bg = "#000000" })
				set_hl(0, "NormalNC", { bg = "#000000" })
				set_hl(0, "NormalFloat", { bg = "#000000" })
				set_hl(0, "SignColumn", { bg = "#000000" })
				set_hl(0, "EndOfBuffer", { bg = "#000000" })
				disable_italics()
			end,
		})
	end,
}

-- return {
-- 	"vague-theme/vague.nvim",
-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 	priority = 1000, -- make sure to load this before all the other plugins
-- 	config = function()
-- 		require("vague").setup({
-- 			style = {
-- 				boolean = "none",
-- 				number = "none",
-- 				float = "none",
-- 				error = "none",
-- 				comments = "none",
-- 				conditionals = "none",
-- 				functions = "none",
-- 				headings = "none",
-- 				operators = "none",
-- 				strings = "none",
-- 				variables = "none",
--
-- 				-- keywords
-- 				keywords = "none",
-- 				keyword_return = "none",
-- 				keywords_loop = "none",
-- 				keywords_label = "none",
-- 				keywords_exception = "none",
--
-- 				-- builtin
-- 				builtin_constants = "none",
-- 				builtin_functions = "none",
-- 				builtin_types = "none",
-- 				builtin_variables = "none",
-- 			},
-- 		})
-- 		vim.cmd("colorscheme vague")
-- 	end,
-- }
