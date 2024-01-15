return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = {'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep'},


		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', "<leader>sf", builtin.find_files, {})
			vim.keymap.set('n', "<leader>sg", builtin.git_files, {})
			vim.keymap.set('n', "<leader>sh", builtin.help_tags, {})
			vim.keymap.set('n', "<leader>sb", builtin.buffers, {})
			vim.keymap.set('n', "<leader>sl", builtin.live_grep, {})
			vim.keymap.set('n', "<leader>/", builtin.oldfiles, {})
			vim.keymap.set('n', "<leader>r", builtin.lsp_references, {})
			vim.keymap.set('n', "<leader>sr", function()
					builtin.grep_string({search = vim.fn.input("Grep > ")})
				end, {})
				vim.keymap.set('n', "<leader>?", function()
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, {})
			end
	},

	"nvim-telescope/telescope-fzf-native.nvim",

}
