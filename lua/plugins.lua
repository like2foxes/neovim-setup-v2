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

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'

	use 'nvim-tree/nvim-web-devicons'
	use 'onsails/lspkind.nvim'

	use 'yorik1984/newpaper.nvim'

	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'nvim-telescope/telescope.nvim'
	use 'folke/neodev.nvim'

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	use 'windwp/nvim-autopairs'
	use 'lewis6991/gitsigns.nvim'
	use 'kdheepak/lazygit.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'akinsho/bufferline.nvim'
	use 'nvim-lualine/lualine.nvim'

	use'folke/which-key.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
