-- LSP Navigation
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Go to definition" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true, desc = "Find references" })

-- Quick fix and formatting
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "Code actions" })
vim.keymap.set('n', '<S-A-f>', function() vim.lsp.buf.format({ async = true }) end, { noremap = true, silent = true, desc = "Format code" })
vim.keymap.set('n', '<leader>cf', '<cmd>ALEFix<CR>', { noremap = true, silent = true, desc = "Fix ESLint issues" })

-- Code completion
vim.keymap.set('i', '<M-Space>', function() require('cmp').complete() end, { noremap = true, silent = true, desc = "Trigger completion" })

-- Diagnostic navigation
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Next diagnostic" })
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = "Previous diagnostic" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostic details" })

-- Telescope commands
vim.keymap.set('n', '<leader>pf', function() require('telescope.builtin').find_files() end, { noremap = true, silent = true, desc = "Find files" })
vim.keymap.set('n', '<leader>ps', function() require('telescope.builtin').live_grep() end, { noremap = true, silent = true, desc = "Search in files" })
vim.keymap.set('n', '<leader>pb', function() require('telescope.builtin').buffers() end, { noremap = true, silent = true, desc = "Find buffers" })
vim.keymap.set('n', '<leader>pg', function() require('telescope.builtin').git_files() end, { noremap = true, silent = true, desc = "Find git files" })

local map = vim.keymap.set

-- Window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Navigate to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Navigate to bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Navigate to top window" })
map("n", "<C-l>", "<C-w>l", { desc = "Navigate to right window" })

-- Window resizing
map("n", "<C-Up>", ":resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Down>", ":resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Text manipulation
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Better scrolling and searching
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
map("n", "n", "nzzzv", { desc = "Next search result and center" })
map("n", "N", "Nzzzv", { desc = "Previous search result and center" })

-- Clear search and save
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear search and escape" })
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Better paste and cancel
map("v", "p", '"_dP', { desc = "Better paste" })
map("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })

-- Diagnostic navigation
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix list" })

-- Disable arrow keys in normal mode
map("n", "<Up>", "<Nop>", { desc = "Disable up arrow key" })
map("n", "<Down>", "<Nop>", { desc = "Disable down arrow key" })
map("n", "<Left>", "<Nop>", { desc = "Disable left arrow key" })
map("n", "<Right>", "<Nop>", { desc = "Disable right arrow key" })

-- Netrw
map("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Netrw (current dir)" })
map("n", "<leader>pc", function() vim.cmd("Ex " .. vim.fn.expand("%:p:h")) end, { desc = "Open Netrw at current file" })

