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

vim.opt_local.conceallevel = 2

vim.keymap.set('n', "<leader>e", vim.cmd.Explore)
vim.keymap.set('n', "<leader>co", ":e ~/.config/nvim/init.lua<CR>")
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('t', "<esc>", "<C-\\><C-n>")
vim.keymap.set('n', "<leader>tv", "<CMD>vsp<CR><ESC><C-w>l<CMD>term<CR>")
vim.keymap.set('n', "<leader>tt", "<CMD>sp<CR><ESC><C-w>j<CMD>term<CR>")
vim.keymap.set('n', "<leader>T", "<CMD>term<CR>")
vim.keymap.set('n', "<leader>wv", "<CMD>vsp<CR><ESC><C-w>l")
vim.keymap.set('n', "<leader>ww", "<CMD>sp<CR><ESC><C-w>j")
vim.keymap.set('n', "<leader>+", "<CMD>resize 15<CR>")
vim.keymap.set('n', "<leader>1", "<CMD>lua Color('rose-pine-dawn')<CR>")
vim.keymap.set('n', "<leader>2", "<CMD>lua Color('anderson')<CR>")
vim.keymap.set('n', "<leader>3", "<CMD>lua Color('mountaineer')<CR>")
vim.keymap.set('n', "<C-t>", "<CMD>tabnew<CR>")
vim.keymap.set('n', "<C-n>", "<CMD>tabNext<CR>")
vim.keymap.set("n", ",cm", "<cmd>-1read ~/.config/nvim/skeleton/.cmake.skeleton<cr>", {desc = '[c][m]ake'})
vim.keymap.set("n", ",h", "<cmd>-1read ~/.config/nvim/skeleton/.html.skeleton<cr>6jf>a", {desc = '[h]tml'})
vim.keymap.set("n", ",cp", "<cmd>-1read ~/.config/nvim/skeleton/.cpp.skeleton<cr>3jo", {desc = '[c][p]p'})
vim.keymap.set("n", ",c", "<cmd>-1read ~/.config/nvim/skeleton/.c.skeleton<cr>2jo", {desc = '[c]'})

Color("mountaineer")

return {}
