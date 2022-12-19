local map = require("utils").map

-- abbreviations
vim.cmd('iabb c const')

-- set leader as space
map('','<Space>','<NOP>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' c'

-- better exit from insert mode
map({"i", 'v', 'c'}, "kj", "<Esc>")
map({"i", 'v', 'c'}, "jk", "<Esc>")

-- put ; in the end of the line and return to insert mode
map('i', "<C-f>", "<Esc>A;")
map('i', "<C-Space>", "<Esc>A")

-- after scrolling center the page
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- delete character under cursur in insert mode
map('i', '<C-l>', '<Esc>lxa')

-- better moving between windows
map('n','<C-h>','<C-w>h')
map('n','<C-j>','<C-w>j')
map('n','<C-k>','<C-w>k')
map('n','<C-l>','<C-w>l')
map('n','gh','<C-w>h', {desc = "Go to Window to The Right"})
map('n','gj','<C-w>j', {desc = "Go to Window Below"})
map('n','gk','<C-w>k', {desc = "Go to Window Above"})
map('n','gl','<C-w>l', {desc = "Go to Window To the Left"})

-- move between tabs
map('n','gH',':tabprevious<CR>', {desc = "Next Tab"})
map('n','gL',':tabnext<CR>', {desc = "Previos Tab"})

-- keymaps for ufo (folds)
map('n', 'zR', require('ufo').openAllFolds, {desc = "[R]ecursively Open Folds"})
map('n', 'zM', require('ufo').closeAllFolds, {desc = "[M] Close All Folds"})

-- make visual selection stay after changing indentation
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Lsp Saga mappings
map("n", "gs", "<cmd>Lspsaga lsp_finder<CR>", { desc = "Find [S]ymbol Definition and References"})
map("n", "gr", "<cmd>Lspsaga rename<CR>", { desc = "[R]ename"})
map("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { desc = "[P]eek Definition"})
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to [D]efinition"})
map("n", "gt", '<cmd>lua vim.lsp.buf.type_definition()<cr>', { desc = "Go to [T]ype Definition"})
map("n", "ga", '<cmd>Lspsaga code_action<cr>', { desc = "Code [A]ction"})
map("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Previous [D]iagnostic"})
map("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next [D]iagnsotic"})
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Float terminal
map("n", "<A-d>", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })

-- close floaterm
map("t", "<A-d>", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })

local wc = require('which-key')
local mappings = {
	h = {":noh<CR>", "Turn Off [H]ighlight"},
	o = { '<cmd>LSoutlineToggle<CR>', "Toggle Soutline [O]bjects"},
	t = { '<cmd>NvimTreeOpen<CR>', "Toggle Nvim [T]ree"},
	["?"] = {require('telescope.builtin').oldfiles, "[?] Find recently opened files" },
	[" "] = {require('telescope.builtin').buffers, '[ ] Find existing buffers' },
	['/'] = { function() require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false, }) end, "[/] Fuzzily search in current buffer]"},
	s = {
		name = "[S]earch",
		f = {require('telescope.builtin').find_files, "[F]iles" },
		h = {require('telescope.builtin').help_tags, "[H]elp" },
		w = {require('telescope.builtin').grep_string, "current [W]ord" },
		g = {require('telescope.builtin').live_grep, "by [G]rep" },
		D = {require('telescope.builtin').diagnostics, "[D]iagnostics" },
		d = {require('telescope.builtin').lsp_definitions, "[Definitions]"},
		s = {require('telescope.builtin').lsp_document_symbols, "[S]ymbols" },
		S = {require('telescope.builtin').lsp_dynamic_workspace_symbols, "workspace [S]ymbols" },
		t = {require('telescope.builtin').treesitter, "symbol via [T]reesitter"},
		l = {require('telescope.builtin').resume, "[L]ast results" },
		k = {require('telescope.builtin').keymaps, "[K]eymaps"},
	},
	g = {
		name = "[G]it",
		g = { '<cmd>LazyGit<CR>', "Open Lazy[G]it"},
		s = {":Gitsigns stage_buffer<CR>", "[S]tage this buffer" },
		u = {":Gitsigns undo_stage_hunk<CR>", "[U]ndo Stage Hunk"},
		R = {":Gitsigns reset_buffer<CR>", "[R]eset Buffer"},
		p = {":Gitsigns preview_hunk<CR>", "[P]review"},
		b = {":Gitsigns toggle_current_line_blame<CR>", "Toggle Line [B]lame"},
		B = { "Gitsigns blame_line<CR>", "Get [B]lame"},
		d = {":Gitsigns diffthis<CR>", "[D]iff"},
		D = {":Gitsigns toggle_deleted<CR>", "Toggle [D]eleted"},
		w = {":Gitsigns toggle_word_diff<CR>", "Toggle [W]ord Diff"}

	},
	l = {
		name = "[L]SP",
		k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
		w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add [W]orkspace Folder"},
		W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove [W]orkspace Folder"},
		l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', "[L]ist Workspace Folders"},
		d = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line [D]iagnostics"},
	},
}
local opts = {
	prefix = '<leader>'
}
wc.register(mappings,opts)
