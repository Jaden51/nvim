local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.general.positionEncodings = { "utf-16" }

vim.g.rustaceanvim = {
    capabilities = capabilities,
}
