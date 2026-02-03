local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.general.positionEncodings = { "utf-16" }

return
{
    'mrcjkb/rustaceanvim',
    version = '^7', -- Recommended
    lazy = false,   -- This plugin is already lazy
}
