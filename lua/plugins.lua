local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local packer_bootstrap = ensure_packer()

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

return require('packer').startup(function(use)

	-- packer
	use 'wbthomason/packer.nvim'

	-- this is a prerequisite for many other plugins
	use 'nvim-lua/plenary.nvim'

	-- themes and icons
	use 'nvim-tree/nvim-web-devicons'
	use 'onsails/lspkind.nvim'
	use 'RRethy/nvim-base16'

	-- lsp related plugins
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
	use 'folke/neodev.nvim' -- for neovim lua
	use 'ray-x/lsp_signature.nvim'
	use 'j-hui/fidget.nvim'

	-- treesitter related plugins
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/nvim-treesitter-context'
	use 'nvim-treesitter/nvim-treesitter-textobjects'

	-- telescope related plugins
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'nvim-telescope/telescope.nvim'

	-- nvim-cmp
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- git
	use 'lewis6991/gitsigns.nvim'
	use 'kdheepak/lazygit.nvim'

	-- visual aid
	use 'windwp/nvim-autopairs'
	use 'nvim-lualine/lualine.nvim'
	use 'NvChad/nvim-colorizer.lua'
	use 'folke/which-key.nvim'
	use 'lukas-reineke/indent-blankline.nvim'

	-- code structure
	use 'numToStr/Comment.nvim'
	use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

	-- debugging
	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui'

	-- project management
	use 'rmagatti/auto-session'
	use 'nvim-tree/nvim-tree.lua'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)

