require('plugins')
require('mason-config')
require('options')
require('neodev-config') -- must be set before lsp-config
require('cmp-config')
require('fidget-config')
require('tree-sitter-config')
require('lsp-saga-config')
require('telescope-config')
require('autopairs-config')
require('colorscheme')
require('gitsigns-config')
require('nvim-tree-config')
require('colorizer-config')
require('lualine-config')
require('treesitter-context-config')
require('comment-config')
require('dap-config')
require('indent-blankline-config')
require('fold-config')
require('lsp-signature-config')
require('auto-session-config')
require('keymaps')

vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
