return {
	"gbprod/phpactor.nvim",
	branch = "main",
	ft = { "php" },
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		install = {
			php_bin = "php",
			bin = vim.fn.stdpath("data") .. "/mason/packages/phpactor/phpactor.phar",
		},
		lspconfig = {
			enabled = false, -- Si tu gères déjà le LSP ailleurs
		},
	},
	keys = {
		{ "<leader>ci", "<Cmd>PhpActor import_class<CR>", desc = "Import PHP class" },
		{ "<leader>cm", "<Cmd>PhpActor import_missing_classes<CR>", desc = "Import missing PHP classes" },
	},
}
