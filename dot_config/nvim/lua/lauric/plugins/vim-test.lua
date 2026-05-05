return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux", -- pour TMUX
	},
	config = function()
		vim.g["test#strategy"] = "vimux"
		vim.g["test#php#phpunit#executable"] = "vendor/bin/phpunit"

		-- keymaps
		vim.keymap.set("n", "<leader>rtn", ":TestNearest<CR>", { desc = "Run nearest test" })
		vim.keymap.set("n", "<leader>rtf", ":TestFile<CR>", { desc = "Run test file" })
		vim.keymap.set("n", "<leader>rts", ":TestSuite<CR>", { desc = "Run test suite" })
		vim.keymap.set("n", "<leader>rtl", ":TestLast<CR>", { desc = "Run last test" })
		vim.keymap.set("n", "<leader>rtv", ":TestVisit<CR>", { desc = "Visit test file" })
	end,
}
