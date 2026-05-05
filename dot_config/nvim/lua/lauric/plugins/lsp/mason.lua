return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			-- list of servers for mason to install
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"emmet_ls",
				"phpactor",
				"twiggy_language_server",
				"gopls",
				"golangci_lint_ls",
			},
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			{
				"WhoIsSethDaniel/mason-tool-installer.nvim",
				opts = {
					ensure_installed = {
						"php-cs-fixer",
						"phpstan",
						"phpactor",
						"prettier",
						"eslint_d",
						"stylua",
						"golangci_lint_ls",
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
}
