local wc = require('which-key')
local mappings = {
	g = {":Telescope live_grep<cr>", "Live Grep"},
	G = {":Telescope grep_string<cr>", "Grep String"},
	o = { '<cmd>LSoutlineToggle<CR>', "Toggle Soutline"},
	e = { '<cmd>NvimTreeOpen<CR>', "Toggle Nvim Tree"},
	s = {":Telescope lsp_document_symbols<cr>", "Symbols"},
	S = {":Telescope lsp_dynamic_workspace_symbols<cr>", "Symbols"},
	[" "] = {":Telescope find_files<cr>", "Find Files"},
	L = { '<cmd>LazyGit<CR>', "Open LazyGit"},
	f = {
		name = "Search (via Telescope)",
		r = {":Telescope lsp_references<cr>", "LSP References"},
		b = {":Telescope buffers<cr>", "Buffers"},
		o = {":Telescope oldfiles<cr>", "Previously open files"},
		D = {":Telescope diagnostics<cr>", "Show Diagnostics"},
		i = {":Telescope lsp_implementations<cr>", "Go to Implementation"},
		d = {":Telescope lsp_definitions<cr>", "Go to Definition"},
		t = {":Telescope lsp_type_definitions<cr>", "Go to Type Definition"},
		S = {":Telescope search_history<cr>", "Search History"},
		C = {":Telescope commands<cr>", "Commands"},
		c = {":Telescope commands_history<cr>", "Recent Commands"},
		h = {":Telescope help_tags<cr>", "Help"},
		v = {":Telescope colorschemes<cr>", "Change Colorscheme"},
		j = {":Telescope jumplist<cr>", "Jumplist"},
		k = {":Telescope keymaps<cr>", "Show Keymaps"},
		p = {":Telescope pickers<cr>", "Pickers"},
		u = {":Telescope resume<cr>", "Return to Search"}
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
		c = {":BufferLineClosePick<cr>", "Close a buffer"}
	}
}
local opts = {
	prefix = '<leader>'
}
wc.register(mappings,opts)
