return {

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'nvim-tree/nvim-web-devicons' },

        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', "<leader>sf", builtin.find_files, { desc = 'Find Files' })
            vim.keymap.set('n', "<leader>sg", builtin.git_files, { desc = 'Git Files' })
            vim.keymap.set('n', "<leader>sh", builtin.help_tags, { desc = 'Help Tags' })
            vim.keymap.set('n', "<leader><leader>", builtin.buffers, { desc = 'Buffer Search' })
            vim.keymap.set('n', "<leader>sl", builtin.live_grep, { desc = 'Live Grep' })
            vim.keymap.set('n', "<leader>?", builtin.oldfiles, { desc = 'Old Files' })
            vim.keymap.set('n', "<leader>r", builtin.lsp_references, { desc = 'LSP References' })
            vim.keymap.set('n', "<leader>sr", function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end, { desc = 'Search Grep' })
            vim.keymap.set('n', "<leader>/", function()
                require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
                    winblend = 10,
                    previewer = false,
                })
            end, { desc = 'Current Grep' })
        end
    },

    "nvim-telescope/telescope-fzf-native.nvim",
}
