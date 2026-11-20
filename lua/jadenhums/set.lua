vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
    name = 'OSC 52 (Write Only)',
    copy = {
        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
        ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
        ['+'] = function()
            return { vim.fn.split(vim.fn.getreg('"'), '\n'), vim.fn.getregtype('"') }
        end,
        ['*'] = function()
            return { vim.fn.split(vim.fn.getreg('"'), '\n'), vim.fn.getregtype('"') }
        end,
    },
}

vim.cmd("colorscheme rose-pine-dawn")

