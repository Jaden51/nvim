local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.general.positionEncodings = { "utf-16" }

return
{
    {
        "mrcjkb/rustaceanvim",
        version = "^5",
        ft = { "rust" },
        dependencies = {
            "neovim/nvim-lspconfig",
        },
        config = function()
            vim.g.rustaceanvim = {
                -- LSP configuration
                server = {
                    on_attach = function(client, bufnr)
                        local bufopts = { noremap = true, silent = true, buffer = bufnr }
                        vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
                        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
                        vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
                        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
                    end,
                    capabilities = capabilities,
                    default_settings = {
                        ["rust-analyzer"] = {
                            cargo = {
                                allFeatures = true,
                            },
                        },
                    },
                },
            }
        end,
    },
}
