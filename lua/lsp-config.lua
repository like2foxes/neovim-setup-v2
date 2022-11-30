-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

local servers = {
	'tsserver',
	'bashls',
	'clangd',
	'fennel-ls',
	'rust_analyzer',
	'cssls',
	'emmet_ls',
	'html',
	'clojure_lsp',
}
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		capabilities = capabilities
	}
end

require('lspconfig').sumneko_lua.setup {
	capabilities = capabilities,
	settings = {
		Lua = {
			workspace = {
				checkThirdParty = false,
			}
		}
	}

}

