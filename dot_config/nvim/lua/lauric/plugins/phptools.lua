return {
	"ccaglak/phptools.nvim",
	keys = {
		{ "<leader>pm", "<cmd>PhpTools Method<cr>" },
		{ "<leader>pc", "<cmd>PhpTools Class<cr>" },
		{ "<leader>ps", "<cmd>PhpTools Scripts<cr>" },
		{ "<leader>pn", "<cmd>PhpTools Namespace<cr>" },
		{ "<leader>pg", "<cmd>PhpTools GetSet<cr>" },
		{ "<leader>pf", "<cmd>PhpTools Create<cr>" },
		{ "<leader>pd", "<cmd>PhpTools DrupalAutoLoader<cr>" },
		{ mode = "v", "<leader>pr", "<cmd>PhpTools Refactor<cr>" },
	},
	dependencies = {
		"ccaglak/namespace.nvim", -- optional - php namespace resolver
		"ccaglak/snippets.nvim", -- optional -- native snippet expander
	},
	opts = {
		ui = {
			enable = true, -- default:true; false only if you have a UI enhancement plugin
			fzf = false, -- default:false; tests requires fzf used only in tests module otherwise there might long list  of tests
		},
	},
	config = function()
		local map = vim.keymap.set

		local tests = require("phptools.tests") -- delete if you have a test plugin
		map("n", "<Leader>rta", tests.test.all, { desc = "Run all tests" })
		map("n", "<Leader>rtf", tests.test.file, { desc = "Run current file tests" })
		map("n", "<Leader>rtl", tests.test.line, { desc = "Run test at cursor" })
		map("n", "<Leader>pts", tests.test.filter, { desc = "Search and run test" })
		map("n", "<Leader>ptp", tests.test.parallel, { desc = "Run tests in parallel" })
		map("n", "<Leader>rtr", tests.test.rerun, { desc = "Rerun last test" })
		map("n", "<Leader>rti", tests.test.selected, { desc = "Run selected test file" })
	end,
}
