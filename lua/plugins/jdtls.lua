return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			jdtls = {
				cmd = { "cmd.exe", "/c", "jdtls.cmd" },
			},
		},
	},
}
