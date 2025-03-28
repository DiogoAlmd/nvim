-- Basic vim options that should be set first
vim.opt.modifiable = true
vim.opt.compatible = false
vim.opt.termguicolors = true

-- General settings
local opt = vim.opt

-- File handling
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true
local undodir = vim.fn.stdpath("data") .. "/undo"
opt.undodir = undodir

-- Create undo directory if it doesn't exist
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

-- Editor behavior
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.ignorecase = true
opt.smartcase = true
opt.updatetime = 50
opt.timeoutlen = 300
opt.completeopt = "menuone,noselect"
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.cursorline = true
opt.mouse = "a"

-- Theme settings
opt.background = "dark"

-- Clipboard settings
opt.clipboard = "unnamedplus"

-- Netrw settings
vim.g.netrw_banner = 0        -- Hide banner
vim.g.netrw_browse_split = 0  -- Open files in the same window
vim.g.netrw_winsize = 25     -- Set explorer width to 25%
vim.g.netrw_liststyle = 3    -- Tree style listing
vim.g.netrw_altv = 1         -- Open splits to the right
vim.g.netrw_preview = 1      -- Open previews vertically

-- Fix space key behavior
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- macOS specific keybindings
vim.keymap.set({ "n", "v" }, "<D-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "n", "v", "i" }, "<D-v>", '"+p', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<D-a>", "ggVG", { noremap = true, silent = true })
vim.keymap.set({ "n", "v", "i" }, "<D-s>", "<Esc>:w<CR>", { noremap = true, silent = true })

-- Clipboard integration
vim.keymap.set({ "n", "v" }, "y", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "p", '"+p', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "P", '"+P', { noremap = true, silent = true })

-- Auto-save on leaving insert mode (wrapped in pcall for safety)
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    if vim.bo.modifiable and vim.bo.modified then
      vim.cmd("silent! write")
    end
  end,
})