local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.general.positionEncodings = { "utf-16" }

return {
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = true,
            }
        }
    }
}
