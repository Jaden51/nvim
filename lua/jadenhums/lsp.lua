-- Formatting is handled by conform.nvim (see plugins/conform.lua)
-- conform uses lsp_format = "fallback" so LSP formatting still works
-- for filetypes without a dedicated formatter configured.
vim.api.nvim_create_autocmd("FileType", {
    pattern = "json",
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.expandtab = true
    end,
})
