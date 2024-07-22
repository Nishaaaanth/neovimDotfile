function Color(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- if color == "rose-pine" then
    --     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- end

    -- if color == "gruvbox" then
    --     local config = function()
    --         require("gruvbox").setup({
    --             contrast = "hard",
    --             palette_overrides = { dark0_hard = "#0E1018" }
    --         })
    --         vim.cmd.colorscheme(color)
    --     end
    --     return config
    -- end

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

    "rafi/awesome-vim-colorschemes",

    "fcancelinha/northern.nvim",

    "fcpg/vim-fahrenheit",

    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            color_overrides = {
                mocha = {
                    rosewater = "#ffc9c9",
                    flamingo = "#ff9f9a",
                    pink = "#ffa9c9",
                    mauve = "#df95cf",
                    lavender = "#a990c9",
                    red = "#ff6960",
                    maroon = "#f98080",
                    peach = "#f9905f",
                    yellow = "#f9bd69",
                    green = "#b0d080",
                    teal = "#a0dfa0",
                    sky = "#a0d0c0",
                    sapphire = "#95b9d0",
                    blue = "#89a0e0",
                    text = "#e0d0b0",
                    subtext1 = "#d5c4a1",
                    subtext0 = "#bdae93",
                    overlay2 = "#928374",
                    overlay1 = "#7c6f64",
                    overlay0 = "#665c54",
                    surface2 = "#504844",
                    surface1 = "#3a3634",
                    surface0 = "#252525",
                    base = "#151515",
                    mantle = "#0e0e0e",
                    crust = "#080808",
                },
            },

            integrations = {
                cmp = true,
                gitsigns = true,
                treesitter = true,
                telescope = true,
                mason = true,
                markdown = true,
                which_key = true,
                style = "nvchad",
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl"},
                        hints = { "undercurl"},
                        warnings = { "undercurl" },
                        information  = {"undercurl" }
                    }
                }
            }
        }
    },

    "folke/tokyonight.nvim",

    {
        config = function()
            require("rose-pine").setup({
                dim_inactive_windows = true,

                styles = {
                    transparency = true,
                }
            })
        end
    },

}
