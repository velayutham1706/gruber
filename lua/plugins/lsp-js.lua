return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
			opts.servers = opts.servers or {}
			opts.servers.ts_ls = {
				capabilities = capabilities,
			}
			opts.servers.eslint = {
				capabilities = capabilities,
			}
			opts.servers.dartls = {
				capabilities = capabilities,
			}
			opts.servers.dcm = {
				cmd = { "dcm", "lsp" },
				filetypes = { "dart" },
			}
			return opts
		end,
	},
}
