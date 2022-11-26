-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

local servers = {
	'sumneko_lua'
}
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		capabilities = capabilities
	}
end
	


