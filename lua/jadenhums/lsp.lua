vim.lsp.enable({
	"luals",
	"racketls",
	"gopls"
})

-- Autoformat before save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(ev)
    vim.lsp.buf.format({ bufnr = ev.buf })
  end,
})
