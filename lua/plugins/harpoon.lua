return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		-- Open Harpoon quick menu
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon Menu" })

		-- Add current file
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon Add" })

		-- Jump to marks
		vim.keymap.set("n", "<leader>1", function()
			harpoon:list():select(1)
		end)

		vim.keymap.set("n", "<leader>2", function()
			harpoon:list():select(2)
		end)

		vim.keymap.set("n", "<leader>3", function()
			harpoon:list():select(3)
		end)

		vim.keymap.set("n", "<leader>4", function()
			harpoon:list():select(4)
		end)

		-- Previous / Next
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end)

		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end)

		-- Buffer-local mappings for the quick menu
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "harpoon",
			callback = function(event)
				local opts = { buffer = event.buf, noremap = true, silent = true }

				vim.keymap.set("n", "q", "<cmd>close<CR>", opts)
				vim.keymap.set("n", "<Esc>", "<cmd>close<CR>", opts)

				-- Optional convenience mappings
				vim.keymap.set("n", "H", "gg", opts)
				vim.keymap.set("n", "L", "G", opts)
			end,
		})
	end,
}
