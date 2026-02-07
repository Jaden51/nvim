local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
    spec = {
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.8',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },
        -- searching files
        {
            'nvim-telescope/telescope-ui-select.nvim'
        },
        -- themes
        {
            'rebelot/kanagawa.nvim'
        },
        -- parsing syntax trees for colour
        {
            'nvim-treesitter/nvim-treesitter', branch = 'master', lazy = false, build = ':TSUpdate'
        },
        -- better lua
        {
            'nvim-lua/plenary.nvim'
        },
        -- file marking
        {
            'ThePrimeagen/harpoon'
        },
        -- undo tree
        {
            'mbbill/undotree'
        },
        -- git wrapper
        {
            'tpope/vim-fugitive'
        },
        -- lsp
        {
            'neovim/nvim-lspconfig'
        },
        -- auto complete
        {
            'hrsh7th/cmp-nvim-lsp'
        },
        {
            'hrsh7th/cmp-buffer'
        },
        {
            'hrsh7th/cmp-path'
        },
        {
            'hrsh7th/cmp-cmdline'
        },
        {
            'hrsh7th/nvim-cmp'
        },
        {
            import = "jadenhums.plugins"
        }
    },
    install = { colorscheme = { "habamax" } },
    checker = { enabled = true },
})
