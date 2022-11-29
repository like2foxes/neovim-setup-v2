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
local wc = require('which-key')
local mappings = {
	i = {":noh<CR>", "Turn Off Highlight"},
	g = {":Telescope live_grep<cr>", "Live Grep"},
	G = {":Telescope grep_string<cr>", "Grep String"},
	o = { '<cmd>SymbolsOutline<CR>', "Toggle Soutline"},
	e = { '<cmd>NvimTreeOpen<CR>', "Toggle Nvim Tree"},
	s = {":Telescope lsp_document_symbols<cr>", "Symbols"},
	S = {":Telescope lsp_dynamic_workspace_symbols<cr>", "Symbols"},
	[" "] = {":Telescope find_files<cr>", "Find Files"},
	L = { '<cmd>LazyGit<CR>', "Open LazyGit"},
	u = {
		name = "General Utilities",
		s = {":source %<CR>", "Source current buffer"},
		p = {":PackerSync<CR>", "Sync Packer"}
	},
	f = {
		name = "Search (via Telescope)",
		r = {":Telescope lsp_references<cr>", "LSP References"},
		f = {":Telescope buffers<cr>", "Buffers"},
		o = {":Telescope oldfiles<cr>", "Previously open files"},
		D = {":Telescope diagnostics<cr>", "Show Diagnostics"},
		i = {":Telescope lsp_implementations<cr>", "Go to Implementation"},
		d = {":Telescope lsp_definitions<cr>", "Go to Definition"},
		t = {":Telescope lsp_type_definitions<cr>", "Go to Type Definition"},
		S = {":Telescope search_history<cr>", "Search History"},
		C = {":Telescope commands<cr>", "Commands"},
		c = {":Telescope commands_history<cr>", "Recent Commands"},
		h = {":Telescope help_tags<cr>", "Help"},
		v = {":Telescope colorscheme<cr>", "Change Colorscheme"},
		j = {":Telescope jumplist<cr>", "Jumplist"},
		k = {":Telescope keymaps<cr>", "Show Keymaps"},
		p = {":Telescope pickers<cr>", "Pickers"},
		u = {":Telescope resume<cr>", "Return to Search"}
	},
	h = {
		name = "Git Signs",
		s = {":Gitsigns stage_buffer<CR>", "Stage this buffer" },
		u = {":Gitsigns undo_stage_hunk<CR>", "Undo Stage Hunk"},
		R = {":Gitsigns reset_buffer<CR>", "Reset Buffer"},
		p = {":Gitsigns preview_hunk<CR>", "Preview"},
		b = {":Gitsigns toggle_current_line_blame<CR>", "Toggle Line Blame"},
		B = { "Gitsigns blame_line<CR>", "Get Blame"},
		d = {":Gitsigns diffthis<CR>", "Diff"},
		D = {":Gitsigns toggle_deleted<CR>", "Toggle Deleted"},
		w = {":Gitsigns toggle_word_diff<CR>", "Toggle Word Diff"}

	},
	l = {
		name = "LSP",
		i = {":LspInfo<cr>", "Connected Language Servers"},
		K = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
		k = {"<cmd>Lspsaga hover_doc<cr>", "Hover Commands"},
		w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder"},
		W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder"},
		l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>', "List Workspace Folders"},
		t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition"},
		d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
		D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
		r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References"},
		R = {'<cmd>Lspsaga rename<cr>', "Rename"},
		a = {'<cmd>Lspsaga code_action<cr>', "Code Action"},
		e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics"},
		n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic"},
		N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic"},
		p = {'<cmd>Lspsaga peek_definition<CR>', "Peek Definition"},
		o = {'<cmd>LSoutlineToggle<CR>', "Toggle outline" },
		c = {'<cmd>Lspsaga show_cursor_diagnostics<CR>'}
	},
	b = {
		name = "Buffers",
		b = {":BufferLinePick<cr>", "Pick a buffer"},
		n = {":BufferLineCycleNext<cr>", "Next buffer"},
		p = {":BufferLineCyclePrev<cr>", "Previous buffer"},
		N = {":BufferLineMoveNext<cr>", "Push buffer to the right"},
		P = {":BufferLineMovePrev<cr>", "Push buffer to the left"},
		l = {":BufferLineCloseLeft<cr>", "Close all to the left"},
		r = {":BufferLineCloseRight<cr>", "Close all to the right"},
		c = {":BufferLinePickClose<cr>", "Close a buffer"}
	}
}
local opts = {
	prefix = '<leader>'
}
wc.register(mappings,opts)
