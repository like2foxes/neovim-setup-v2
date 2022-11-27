local wc = require('which-key')
local mappings = {
	g = { '<cmd>LazyGit<CR>', "Open LazyGit"},
	t = { '<cmd>Lspsaga open_floaterm<CR>', "Open Floatterm" },
	s = {
		name = "Search (via Telescope)",
		f = {":Telescope find_files<cr>", "Find Files"},
		g = {":Telescope live_grep<cr>", "Live Grep"},
		G = {":Telescope grep_string<cr>", "Grep String"},
		r = {":Telescope lsp_references<cr>", "LSP References"},
		b = {":Telescope buffers<cr>", "Buffers"},
		o = {":Telescope oldfiles<cr>", "Previously open files"},
		s = {":Telescope lsp_document_symbols<cr>", "Symbols"},
		w = {":Telescope lsp_dynamic_workspace_symbols<cr>", "Symbols"},
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
	},
}
local opts = {
	prefix = '<leader>'
}
wc.register(mappings,opts)
