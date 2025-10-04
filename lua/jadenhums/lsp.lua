-- Autoformat before save
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function(ev)
        vim.lsp.buf.format({ bufnr = ev.buf })
    end,
})

vim.lsp.config.capabilities = vim.lsp.protocol.make_client_capabilities()
vim.lsp.config.capabilities.offsetEncoding = { "utf-16" }

vim.lsp.enable({
    "lua_ls",
    "racket_langserver",
    "rust_analyzer"
})
