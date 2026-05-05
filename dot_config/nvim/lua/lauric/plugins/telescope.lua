return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>ff",
			"<cmd>Telescope find_files hidden=true no_ignore=true no_ignore_parent=true<cr>",
			{ desc = "Fuzzy find files in cwd" }
		)
		keymap.set(
			"n",
			"<leader>fr",
			"<cmd>Telescope oldfiles hidden=true no_ignore=true no_ignore_parent=true<cr>",
			{ desc = "Fuzzy find recent files" }
		)
		keymap.set(
			"n",
			"<leader>fs",
			"<cmd>Telescope live_grep hidden=true no_ignore=true<cr>",
			{ desc = "Find string in cwd" }
		)
		keymap.set(
			"n",
			"<leader>fc",
			"<cmd>Telescope grep_string hidden=true no_ignore=true no_ignore=true<cr>",
			{ desc = "Find string under cursor in cwd" }
		)

		-- find Twig template under selection
		keymap.set("v", "<leader>ft", function()
			local start_pos = vim.fn.getpos("'<")
			local end_pos = vim.fn.getpos("'>")
			local lines = vim.fn.getline(start_pos[2], end_pos[2])
			lines[#lines] = string.sub(lines[#lines], 1, end_pos[3])
			lines[1] = string.sub(lines[1], start_pos[3])
			local text = table.concat(lines, " ")

			require("telescope.builtin").find_files({
				search_dirs = { "templates" }, -- ton dossier templates
				default_text = text,
			})
		end, { desc = "Find Twig template under visual selection" })
	end,
}
