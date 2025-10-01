local capabilities = require('cmp_nvim_lsp').default_capabilities()

return {
	cmd = { "racket", "-l", "racket-langserver" },
	filetypes = { "racket" },
	capabilities = capabilities
}
