local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require("lspconfig")

return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
	capabilities = capabilities,
}
