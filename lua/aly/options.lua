vim.g.mapleader = ' '

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.guicursor = 'n-v-i-c:block'
vim.o.signcolumn = 'yes'
vim.o.inccommand = 'split'

vim.o.relativenumber = true

vim.o.showmode = false
vim.o.swapfile = false
vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

vim.o.scrolloff = 10
