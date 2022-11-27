local map = require("utils").map

-- set leader as space
map('','<Space>','<NOP>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- better exit from insert mode
map("i", "kj", "<Esc>")
map("i", "jk", "<Esc>")

-- better moving between windows
map('n','<C-h>','<C-w>h')
map('n','<C-j>','<C-w>j')
map('n','<C-k>','<C-w>k')
map('n','<C-l>','<C-w>l')
