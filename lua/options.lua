local options = {
	hidden = true,
	autowriteall = true,
	whichwrap = 'b,s,<,>,h,l',
	pumheight = 10,
	fileencoding = 'utf-8',
	splitbelow = true,
	splitright = true,
	termguicolors = true,
	conceallevel = 0,
	showmode = false,
	backup = false,
	writebackup = false,
	updatetime = 300,
	timeoutlen = 500,
	clipboard = 'unnamedplus',
	hlsearch = true,
	incsearch = true,
	ignorecase = true,
	smartcase = true,
	scrolloff = 5,
	sidescrolloff = 5,
	mouse = 'a',
	wrap = false,
	number = true,
	cursorline = true,
	signcolumn = 'yes',
	tabstop = 4,
	softtabstop = 0,
	shiftwidth = 4,
	shiftround = true,
	smarttab = true,
	expandtab = false,
	scroll = 2,
	fixendofline = false,
	wildmenu = true,
	wildmode = 'full',
	swapfile = false,
	undofile = true,
	relativenumber = true,
	foldenable =true,
	foldlevelstart = 99,
	foldlevel = 99,
	foldcolumn = "1",
}

for key, value in pairs(options) do
	vim.opt[key] = value
end
