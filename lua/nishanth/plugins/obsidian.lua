return {
    "epwalsh/obsidian.nvim",
    tag = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("obsidian").setup({
            workspaces = {
                {
                    name = "nishanth",
                    path = "~/Notes/nishanth",
                },
            },
        })

        vim.keymap.set('n', "<leader>oo", "<cmd> ObsidianOpen<CR>", {})
        vim.keymap.set('n', "<leader>on", "<cmd> ObsidianNew<CR>", {})
        vim.keymap.set('n', "<leader>os", "<cmd> ObsidianSearch<CR>", {})
    end
}
