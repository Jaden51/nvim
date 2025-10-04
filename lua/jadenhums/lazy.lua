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
        {
            'rebelot/kanagawa.nvim'
        },
        {
            'nvim-treesitter/nvim-treesitter', branch = 'master', lazy = false, build = ':TSUpdate'
        },
        {
            'nvim-lua/plenary.nvim'
        },
        {
            'ThePrimeagen/harpoon'
        },
        {
            'mbbill/undotree'
        },
        {
            'tpope/vim-fugitive'
        },
        {
            'neovim/nvim-lspconfig'
        },
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
            "CopilotC-Nvim/CopilotChat.nvim",
            dependencies = {
                { "nvim-lua/plenary.nvim", branch = "master" },
            },
            build = "make tiktoken",
            opts = {
            },
        },
        {
            "github/copilot.vim"
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {},
            dependencies = {
                { "mason-org/mason.nvim", opts = {} },
                "neovim/nvim-lspconfig",
            },
        },
        { import = "jadenhums.plugins" }
    },
    install = { colorscheme = { "habamax" } },
    checker = { enabled = true },
})
