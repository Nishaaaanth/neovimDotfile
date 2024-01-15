return {

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",

		config = function()

				require("nvim-treesitter.configs").setup({
				  ensure_installed = {"c", "javascript", "lua", "vimdoc", "typescript", "jsdoc"},
				  sync_install = false,
				  auto_install = true,
				  ignore_install = {},
				  highlight = {
					enable = true,
					--disable = {},
					--disable = function(lang, buf)
					--	local max_filesize = 100 * 1024 -- 100 KB
					--	local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					--	if ok and stats and stats.size > max_filesize then
					--		return true
					--	end
					--end,
					additional_vim_regex_highlighting = {"markdown"},
				  },
				  indent = {
						  enable = true
				  }
		  })
		end
	},

	"nvim-tree/nvim-web-devicons",
}

