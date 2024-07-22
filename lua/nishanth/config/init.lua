vim.o.nu = true
vim.o.rnu = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.termguicolors = true
vim.o.guicursor = ''
vim.g.bg = "dark"

vim.o.mouse = 'a'
vim.o.hlsearch = false
vim.o.updatetime = 50
vim.o.clipboard = "unnamedplus"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 26

vim.opt.conceallevel = 1

vim.keymap.set('n', "<leader>e", vim.cmd.Explore, { desc = 'Explore' })
vim.keymap.set('n', "<leader>**", ":e ~/.config/nvim/init.lua<CR>", { desc = 'Config' })
vim.keymap.set('n', "<leader>*k", ":e ~/.config/nvim/lua/nishanth/config/init.lua<CR>", { desc = 'Keymap' })

vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('t', "<esc>", "<C-\\><C-n>")

vim.keymap.set('n', "<leader>tv", "<CMD>vsp<CR><ESC><C-w>l<CMD>term<CR>", { desc = 'Vertical Term' })
vim.keymap.set('n', "<leader>tt", "<CMD>sp<CR><ESC><C-w>j<CMD>term<CR>", { desc = 'Horizontal Term' })
vim.keymap.set('n', "<leader>T", "<CMD>term<CR>", { desc = 'Term' })
vim.keymap.set('n', "<leader>wv", "<CMD>vsp<CR><ESC><C-w>l", { desc = 'Vertical Window' })
vim.keymap.set('n', "<leader>ww", "<CMD>sp<CR><ESC><C-w>j", { desc = 'Horizontal Window' })
vim.keymap.set('n', "<leader>+", "<CMD>resize 15<CR>", { desc = 'Upsize' })

vim.keymap.set('n', "<leader>c1", "<CMD>lua Color('rose-pine')<CR>", { desc = 'Rose-Pine' })
vim.keymap.set('n', "<leader>c2", "<CMD>lua Color('anderson')<CR>", { desc = 'Anderson' })
vim.keymap.set('n', "<leader>c3", "<CMD>lua Color('mountaineer')<CR>", { desc = 'Mountaineer' })
vim.keymap.set('n', "<leader>c4", "<CMD>lua Color('fahrenheit')<CR>", { desc = 'Fahrenheit' })
vim.keymap.set('n', "<leader>c5", "<CMD>lua Color('catppuccin-mocha')<CR>", { desc = 'Catppuccin-Mocha' })
vim.keymap.set('n', "<leader>c6", "<CMD>lua Color('catppuccin-macchiato')<CR>", { desc = 'Catppuccin-Macchiato' })

vim.keymap.set('n', "<C-t>", "<CMD>tabnew<CR>", { desc = 'New Tab' })
vim.keymap.set('n', "<C-n>", "<CMD>tabNext<CR>", { desc = 'Next Tab' })

vim.keymap.set("n", ",cm", "<cmd>-1read ~/.config/nvim/skeleton/.cmake.skeleton<cr>", { desc = '[c][m]ake' })
vim.keymap.set("n", ",h", "<cmd>-1read ~/.config/nvim/skeleton/.html.skeleton<cr>6jf>a", { desc = '[h]tml' })
vim.keymap.set("n", ",cp", "<cmd>-1read ~/.config/nvim/skeleton/.cpp.skeleton<cr>3jo", { desc = '[c][p]p' })
vim.keymap.set("n", ",c", "<cmd>-1read ~/.config/nvim/skeleton/.c.skeleton<cr>2jo", { desc = '[c]' })

Color("catppuccin-mocha")

return {}
