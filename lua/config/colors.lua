-- vim.cmd.colorscheme("base16-black-metal-bathory")
-- vim.cmd.colorscheme("gorgoroth")
-- vim.cmd.colorscheme("kanso")
vim.cmd.colorscheme("gruber-darker")

vim.api.nvim_set_hl(0, "Cursor", {
	fg = "#000000",
	bg = "#ffffff",
})

local hl = vim.api.nvim_set_hl
local grey = "#1f1f1f"
local function apply_overrides()
	-- Main/editor backgrounds
	-- hl(0, "Normal", { bg = "#000000" })
	-- hl(0, "NormalNC", { bg = "#000000" })
	-- hl(0, "SignColumn", { bg = "#000000" })
	-- hl(0, "FoldColumn", { bg = "#000000" })

	-- Floating windows / popup menus
	-- hl(0, "NormalFloat", { bg = "#000000" })
	-- hl(0, "FloatBorder", { bg = "#000000" })
	-- hl(0, "Pmenu", { bg = "#000000" })

	-- Status/tab bars
	-- hl(0, "StatusLine", { bg = "#000000" })
	-- hl(0, "StatusLineNC", { bg = "#000000" })

	-- Messages / command area
	-- hl(0, "MsgArea", { bg = "#000000" })
	-- hl(0, "MsgSeparator", { bg = "#000000" })

	-- Diagnostics/signs
	-- hl(0, "DiagnosticSignError", { bg = "#000000" })
	-- hl(0, "DiagnosticSignWarn", { bg = "#000000" })
	-- hl(0, "DiagnosticSignInfo", { bg = "#000000" })
	-- hl(0, "DiagnosticSignHint", { bg = "#000000" })

	-- hl(0, "Comment", { italic = false, fg = "#525252" })
	-- hl(0, "@comment", { italic = false, fg = "#525252" })
	-- hl(0, "@punctuation.delimiter", { fg = "#6c6c6c" })
	-- hl(0, "@punctuation.bracket", { fg = "#6c6c6c" })

	-- hl(0, "@comment.documentation.javascript", { fg = "#666666", italic = false })
	-- hl(0, "@keyword.jsdoc", { fg = "#999999", italic = false })
	-- hl(0, "@type.jsdoc", { fg = "#c1c1c1", italic = false })
	-- hl(0, "@variable.jsdoc", { fg = "#ffffff", italic = false })

	-- hl(0, "TsFunction", { fg = 9207664 })
	-- hl(0, "LineNr", { fg = "#8C7F70" })

	-- gruber-darker custom
	hl(0, "@tag.html", { fg = 9873096 })
	hl(0, "@tag.attribute.html", { fg = "#ffffff" })
	hl(0, "@constant.html", { fg = 16768307 })
	hl(0, "LineNrAbove", { fg = "#808080", bold = false })
	hl(0, "LineNr", { fg = 16768307, bold = false })
	hl(0, "LineNrBelow", { fg = "#808080", bold = false })

	-- bathory custom
	-- hl(0, "TsFunction", { fg = 15174227 })
	-- hl(0, "TSType", { fg = 9207664 })
	-- hl(0, "TSAttribute", { fg = 10075050 })
	-- hl(0, "TSConstant", { fg = "#ebbe90" })
	-- hl(0, "@variable", { fg = 10075050 })
	-- hl(0, "@type.builtin", { fg = 9207664 })
	-- hl(0, "LineNrAbove", { fg = "#808080", bold = false })
	-- hl(0, "LineNr", { fg = 15174227, bold = false })
	-- hl(0, "LineNrBelow", { fg = "#808080", bold = false })
end

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = apply_overrides,
})

local function remove_bold(group)
	local ok, h = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
	if ok and next(h) then
		h.bold = false
		vim.api.nvim_set_hl(0, group, h)
	end
end

local function remove_italic(group)
	local ok, h = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
	if ok and next(h) then
		h.italic = false
		vim.api.nvim_set_hl(0, group, h)
	end
end

local function add_italic(group)
	local ok, h = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
	if ok and next(h) then
		h.italic = true
		vim.api.nvim_set_hl(0, group, h)
	end
end

apply_overrides()

remove_bold("@type.builtin")
remove_bold("@type.builtin")
remove_bold("@constant.builtin")
remove_bold("@function.builtin")
remove_bold("@variable.builtin")
remove_bold("@keyword.return")
remove_bold("@boolean")
remove_bold("GruvboxGreenBold")

remove_italic("@variable")
remove_italic("@Comment")
remove_italic("@variable.parameter")
remove_italic("@string")
remove_italic("Type")
remove_italic("@variable.builtin")
remove_italic("@keyword")
remove_italic("@property")
remove_italic("@type.builtin")
remove_italic("@function")
remove_italic("@function.builtin")
