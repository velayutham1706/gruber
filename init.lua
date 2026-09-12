vim.opt.number = true
vim.opt.smartindent = true
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.o.statuscolumn = "%s%=%{v:relnum ? v:relnum : v:lnum} "
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.softtabstop = 2
vim.o.showmode = true
vim.o.laststatus = 0
-- vim.o.cursorline = true
vim.g.loaded_matchparen = 1
vim.api.nvim_set_hl(0, "MatchParen", { link = "Normal" })
vim.opt.shell = "pwsh"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy Bypass -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", ":m .+-1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-4<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<C-j>", ":cnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":cprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set("n", "<C-v>", "<C-v>", { noremap = true })
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open Parent Directory" })
vim.keymap.set("n", "<leader>i", "<cmd>Inspect<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", vim.diagnostic.setloclist, { desc = "Open diagnostic location list" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("Highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- vim.api.nvim_create_autocmd("ColorScheme", {
-- 	callback = function()
-- 		vim.api.nvim_set_hl(0, "Visual", {
-- 			fg = "#000000",
-- 			-- bg = "#8c7f70",
-- 			-- bg = "#EBDBB2",
-- 			bg = "#8C7F70",
-- 		})
-- 	end,
-- })

vim.api.nvim_set_hl(0, "TelescopePreviewMatch", {
	bg = "#8c7f70",
	fg = "#191724",
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- vim.api.nvim_create_autocmd("ColorScheme", {
-- 	callback = function()
-- 		vim.api.nvim_set_hl(0, "CursorLine", {
-- 			bg = "none",
-- 		})
-- 		-- vim.api.nvim_set_hl(0, "CursorLineNr", {
-- 		-- 	fg = "#FFDD33",
-- 		-- 	bold = false,
-- 		-- })
-- 		vim.api.nvim_set_hl(0, "LineNr", {
-- 			fg = "grey",
-- 		})
-- 	end,
-- })

vim.opt.guicursor = "n-v-c-i:block"

require("lazy").setup("plugins")

require("config.colors")
require("config.options")
