return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    name = "todo-comments",

    config = function()
        require("todo-comments").setup({
            signs = true,
            sign_priority = 8,
            keywords = {
                FIX = {
                    color = "error",
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }
                },

                TODO = {
                    icon = " ",
                    color = "info"
                },

                NOTE = {
                    icon = " ",
                    color = "hint",
                    alt = { "INFO" }
                },

                WARN = {
                    icon = " ",
                    color = "warning",
                    alt = { "WARNING" }
                },
            },

            gui_style = {
                fg = "NONE",
                bg = "BOLD"
            },

            colors = {
                error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
                warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
                info = { "DiagnosticInfo", "#2563EB" },
                hint = { "DiagnosticHint", "#10B981" },
                default = { "Identifier", "#7C3AED" },
                test = { "Identifier", "#FF00FF" }
            },

            search = {
                command = "rg",
                args = {
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                },
                pattern = [[\b(KEYWORDS):]],
            },

            highlight = {
                multiline = true,
                multiline_pattern = "^.",
                multiline_context = 10,
                before = "",
                keyword = "wide",
                after = "fg",
                pattern = [[.*<(KEYWORDS)\s*:]],
                comments_only = true,
                max_line_len = 400,
                exclude = {},
            },
        })

        vim.keymap.set('n', "<leader>ft", '<CMD>TodoTelescope<CR>', { desc = 'Todo Telescope' });
    end
}
