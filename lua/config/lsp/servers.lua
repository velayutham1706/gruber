return {
	clangd = {
		cmd = {
			"clangd",
			"--query-driver=C:/msys64/ucrt64/bin/*.exe",
		},
	},

	lua_ls = {
		settings = {
			Lua = {
				completion = {
					callSnippet = "Replace",
				},
			},
		},
	},

	gopls = {},
	jdtls = {},
	pyright = {},
	eslint = {},
	ts_ls = {},
	omnisharp = {},
	rust_analyzer = {},
	html = {},
}
