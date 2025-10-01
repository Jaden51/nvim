vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Persistent undo settings
local undodir = vim.fn.stdpath("state") .. "/undo"

-- create directory if it doesn’t exist
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p", 0700)
end

vim.opt.undodir = undodir
vim.opt.undofile = true
