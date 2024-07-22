return {
    {
        "ThePrimeagen/harpoon",

        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set('n', '<leader>a', mark.add_file, {desc = 'Harpoon add'})
            vim.keymap.set('n', '<leader>h', ui.toggle_quick_menu, {desc = 'Harpoon add'})

            vim.keymap.set('n', '<leader>u', function() ui.nav_file(1) end, {desc = 'Harpoon Nav(1)'})
            vim.keymap.set('n', '<leader>i', function() ui.nav_file(2) end, {desc = 'Harpoon Nav(2)'})
            vim.keymap.set('n', '<leader>o', function() ui.nav_file(3) end, {desc = 'Harpoon Nav(3)'})
            vim.keymap.set('n', '<leader>p', function() ui.nav_file(4) end, {desc = 'Harpoon Nav(4)'})
        end
    }
}
