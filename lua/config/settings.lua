local opt = vim.opt
local g = vim.g

-- Disable netrw for neo-tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- General settings
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.termguicolors = true
opt.ignorecase = true
opt.smartcase = true
opt.clipboard = "unnamedplus"
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.updatetime = 50
opt.timeoutlen = 300
opt.completeopt = "menuone,noselect"
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.cursorline = true
opt.mouse = "a"

-- Set leader key to space
g.mapleader = " "
g.maplocalleader = " "

-- Theme settings (will be configurable later)
opt.background = "dark"

-- Persistent undo
opt.undofile = true
local undodir = vim.fn.stdpath("data") .. "/undo"
opt.undodir = undodir

-- Create undo directory if it doesn't exist
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

vim.cmd [[autocmd InsertLeave * silent! write]]

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25