return {
	"ellisonleao/glow.nvim",
	config = function()
		require("glow").setup({
			width_ratio = 0.7,
			height_ratio = 0.7,
			border = "rounded",
			width = 120,
			height = 40,
		})
	end,
}
