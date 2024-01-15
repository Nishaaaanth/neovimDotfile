vim.o.nu = true
vim.o.rnu = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.termguicolors = true
vim.o.guicursor = ''

vim.o.mouse = 'a'
vim.o.hlsearch = false
vim.o.updatetime = 50

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 26

vim.keymap.set('n', "<leader>e", vim.cmd.Explore)
vim.keymap.set('n', "<leader>co", ":e ~/.config/nvim/init.lua<CR>")
vim.keymap.set('v', "K", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "J", ":m '<-2<CR>gv=gv")
vim.keymap.set('t', "<esc>", "<C-\\><C-n>")
vim.keymap.set('n', "<leader>tv", "<cmd>vsp<cr><esc><C-w>l<cmd>term<cr>")
vim.keymap.set('n', "<leader>tt", "<cmd>sp<cr><esc><C-w>j<cmd>term<cr>")
vim.keymap.set('n', "<leader>wv", "<cmd>vsp<cr><esc><C-w>l")
vim.keymap.set('n', "<leader>ww", "<cmd>sp<cr><esc><C-w>j")
vim.keymap.set('n', "<leader>+", "<cmd>resize 15<cr>")
vim.keymap.set('n', "<leader>1", ":lua Color('rose-pine-dawn')<CR>");
vim.keymap.set('n', "<leader>2", ":lua Color('anderson')<CR>");
vim.keymap.set('n', "<leader>3", ":lua Color('mountaineer')<CR>");

Color("rose-pine-dawn")

return {}
