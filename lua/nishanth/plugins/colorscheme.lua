function Color(color)
	color = color or "rose-pine-dawn"
	vim.cmd.colorscheme(color)
    -- require("lualine").setup({
    --     options = {
    --         theme = color
    --     }
    -- })
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"TheNiteCoder/mountaineer.vim",

	"tlhr/anderson.vim",

	"rose-pine/neovim",
}
