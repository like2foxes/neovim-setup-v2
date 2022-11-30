require('plugins')
require('options')
require('neodev-config') -- must be set before lsp-config
require('lsp-config')
require('cmp-config')
require('tree-sitter-config')
require('lsp-saga-config')
require('telescope-config')
require('autopairs-config')
require('themes/newpaper')
require('gitsigns-config')
require('nvim-tree-config')
require('colorizer-config')
require('lualine-config')
require('treesitter-context-config')
require('comment-config')
require('dap-config')
require('fold-config')
require('lsp-signature-config')
require('auto-session-config')
require('keymaps')

vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
