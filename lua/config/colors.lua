vim.cmd.colorscheme("base16-black-metal-gorgoroth")

local hl = vim.api.nvim_set_hl

local function apply_overrides()
	hl(0, "Comment", { italic = true, fg = "#525252" })
	hl(0, "@comment", { italic = true, fg = "#525252" })
	hl(0, "@keyword", { italic = false })
	hl(0, "@type", { italic = false })
	hl(0, "@function", { italic = false })
	hl(0, "@parameter", { italic = false })
	hl(0, "@variable", { italic = false })
	hl(0, "@property", { italic = false })
	hl(0, "@string", { italic = false })
	hl(0, "@comment.documentation.javascript", { fg = "#666666", italic = false })
	hl(0, "@keyword.jsdoc", { fg = "#999999", italic = false })
	hl(0, "@type.jsdoc", { fg = "#c1c1c1", italic = false })
	hl(0, "@variable.jsdoc", { fg = "#ffffff", italic = false })
	-- relative number background
	hl(0, "LineNr", { bg = "#212121" })
	hl(0, "CursorLineNr", { bg = "NONE" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = apply_overrides,
})

apply_overrides()
