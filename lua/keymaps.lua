local map = require("utils").map

-- set leader as space
map('','<Space>','<NOP>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- better exit from insert mode
map({"i", 'v', 'c'}, "kj", "<Esc>")
map({"i", 'v', 'c'}, "jk", "<Esc>")

-- put ; in the end of the line and return to insert mode
map('i', "<C-f>", "<Esc>A;");

-- better moving between windows
map('n','<C-h>','<C-w>h')
map('n','<C-j>','<C-w>j')
map('n','<C-k>','<C-w>k')
map('n','<C-l>','<C-w>l')

-- Keymaps for Pounce
map('n', 's', '<cmd>Pounce<CR>')
map('n', 'S', '<cmd>PounceRepeat<CR>')
map('v', 's', '<cmd>Pounce<CR>')
map('o', 's', '<cmd>Pounce<CR>')

-- keymaps for ufo (folds)
map('n', 'zR', require('ufo').openAllFolds)
map('n', 'zM', require('ufo').closeAllFolds)

-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
map("n", "gs", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

-- Rename
map("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })

-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Diagnsotic jump can use `<c-o>` to jump back
map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- Hover Doc
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Float terminal
map("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })

-- close floaterm
map("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })
