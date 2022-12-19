local options = {

	-- indentation
	tabstop = 4,
	softtabstop = 0,
	shiftwidth = 4,
	shiftround = true,
	smarttab = true,
	expandtab = false,
	breakindent = true,

	-- buffers
	hidden = true,
	autowriteall = true,
	autoread = true,

	-- splits
	splitbelow = true,
	splitright = true,

	-- menus
	wildmenu = true,
	wildmode = 'full',

	-- folds
	foldenable =true,
	foldlevelstart = 99,
	foldlevel = 99,
	foldcolumn = "1",

	-- backups
	backup = false,
	writebackup = false,
	swapfile = false,
	undofile = true,

	-- searching
	hlsearch = true,
	incsearch = true,
	ignorecase = true,
	smartcase = true,

	-- completion
	completeopt = 'menuone,noselect',

	-- scrolling
	scroll = 2,
	scrolloff = 5,
	sidescrolloff = 5,

	-- number and sign column
	number = true,
	relativenumber = true,
	signcolumn = 'yes',

	-- visual
	termguicolors = true,
	conceallevel = 0,
	showmode = false,
	cursorline = true,
	pumheight = 20,

	-- wrapping
	wrap = false,
	whichwrap = 'b,s,<,>,h,l',

	-- command timming
	updatetime = 300,
	timeoutlen = 500,

	-- encoding and compatability
	fileencoding = 'utf-8',
	fixendofline = false,
	clipboard = 'unnamedplus',
	mouse = 'a',
}

for key, value in pairs(options) do
	vim.opt[key] = value
end
