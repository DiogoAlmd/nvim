vim.g.mapleader = " "

-- LSP Navigation
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Go to definition" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true, desc = "Find references" })

-- Buffer navigation
vim.keymap.set('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true, desc = "Delete buffer" })
vim.keymap.set('n', '<leader>ba', ':ball<CR>', { noremap = true, silent = true, desc = "Show all buffers" })
vim.keymap.set('n', '<leader>bn', ':enew<CR>', { noremap = true, silent = true, desc = "New buffer" })

-- Split management
vim.keymap.set('n', '<leader>vv', ':vsplit<CR>', { noremap = true, silent = true, desc = "Split vertically" })
vim.keymap.set('n', '<leader>vh', ':split<CR>', { noremap = true, silent = true, desc = "Split horizontally" })
vim.keymap.set('n', '<leader>ve', '<C-w>=', { noremap = true, silent = true, desc = "Make splits equal size" })
vim.keymap.set('n', '<leader>vx', ':close<CR>', { noremap = true, silent = true, desc = "Close current split" })

-- Split navigation
vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true, silent = true, desc = "Move to left split" })
vim.keymap.set('n', '<A-j>', '<C-w>j', { noremap = true, silent = true, desc = "Move to bottom split" })
vim.keymap.set('n', '<A-k>', '<C-w>k', { noremap = true, silent = true, desc = "Move to top split" })
vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true, silent = true, desc = "Move to right split" })

-- Window resizing with Option key
vim.keymap.set('n', '<A-Up>', ':resize -2<CR>', { noremap = true, silent = true, desc = "Decrease window height" })
vim.keymap.set('n', '<A-Down>', ':resize +2<CR>', { noremap = true, silent = true, desc = "Increase window height" })
vim.keymap.set('n', '<A-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true, desc = "Decrease window width" })
vim.keymap.set('n', '<A-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true, desc = "Increase window width" })

-- Quick fix and formatting
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "Code actions" })
vim.keymap.set('n', '<S-A-f>', function() vim.lsp.buf.format({ async = true }) end, { noremap = true, silent = true, desc = "Format code" })
vim.keymap.set('n', '<leader>cf', '<cmd>ALEFix<CR>', { noremap = true, silent = true, desc = "Fix ESLint issues" })

-- Code completion
vim.keymap.set('i', '<C-A-Space>', function() require('cmp').complete() end, { noremap = true, silent = true, desc = "Trigger completion" })
vim.keymap.set('n', '<leader>uc', '<cmd>CmpToggle<CR>', { noremap = true, silent = true, desc = "Toggle code completion" })

-- Diagnostic navigation
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Next diagnostic" })
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = "Previous diagnostic" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostic details" })

-- Telescope commands
vim.keymap.set('n', '<leader>pf', function() require('telescope.builtin').find_files() end, { noremap = true, silent = true, desc = "Find files" })
vim.keymap.set('n', '<leader>ps', function() require('telescope.builtin').live_grep() end, { noremap = true, silent = true, desc = "Search in files" })
vim.keymap.set('n', '<leader>pb', function() require('telescope.builtin').buffers() end, { noremap = true, silent = true, desc = "Find buffers" })
vim.keymap.set('n', '<leader>pg', function() require('telescope.builtin').git_files() end, { noremap = true, silent = true, desc = "Find git files" })

-- Window navigation with Option key
vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true, silent = true, desc = "Move to left window" })
vim.keymap.set('n', '<A-j>', '<C-w>j', { noremap = true, silent = true, desc = "Move to bottom window" })
vim.keymap.set('n', '<A-k>', '<C-w>k', { noremap = true, silent = true, desc = "Move to top window" })
vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true, silent = true, desc = "Move to right window" })

-- Text manipulation
vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Better scrolling and searching
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center" })

-- Clear search and save
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear search and escape" })
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Better paste and cancel
vim.keymap.set("v", "p", '"_dP', { desc = "Better paste" })
vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })

-- Diagnostic navigation
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix list" })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<Up>", "<Nop>", { desc = "Disable up arrow key" })
vim.keymap.set("n", "<Down>", "<Nop>", { desc = "Disable down arrow key" })
vim.keymap.set("n", "<Left>", "<Nop>", { desc = "Disable left arrow key" })
vim.keymap.set("n", "<Right>", "<Nop>", { desc = "Disable right arrow key" })

-- Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Netrw (current dir)" })
vim.keymap.set("n", "<leader>pc", function() vim.cmd("Ex " .. vim.fn.expand("%:p:h")) end, { desc = "Open Netrw at current file" })

