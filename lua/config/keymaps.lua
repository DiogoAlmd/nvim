vim.g.mapleader = " "

-- Keybinds para navegação do LSP
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { noremap = true, silent = true })

-- Quick fix (importar automaticamente, corrigir problemas sugeridos pelo LSP)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true })

-- Autoformatação (Shift + Alt + F)
vim.keymap.set('n', '<S-A-f>', function() vim.lsp.buf.format({ async = true }) end, { noremap = true, silent = true })

-- Correção automática do ESLint (fix all auto-fixable problems)
vim.keymap.set('n', '<leader>cf', '<cmd>ALEFix<CR>', { noremap = true, silent = true })

-- Sugestão de código com Ctrl + Espaço
vim.keymap.set('i', '<C-Space>', function() require('cmp').complete() end, { noremap = true, silent = true })

-- Comandos LSP (comandos com d)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { noremap = true, silent = true })

-- Movimentação de arquivos e telescope (comandos com p)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>pf', function() require('telescope.builtin').find_files() end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ps', function() require('telescope.builtin').live_grep() end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>pb', function() require('telescope.builtin').buffers() end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>pb', function() require('telescope.builtin').git_files() end, { noremap = true, silent = true })

local map = vim.keymap.set

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Navigate to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Navigate to bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Navigate to top window" })
map("n", "<C-l>", "<C-w>l", { desc = "Navigate to right window" })

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Down>", ":resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- Move selected line / block of text in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Keep cursor centered when scrolling
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

-- Keep cursor centered when searching
map("n", "n", "nzzzv", { desc = "Next search result and center" })
map("n", "N", "Nzzzv", { desc = "Previous search result and center" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear search and escape" })

-- Save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Better paste
map("v", "p", '"_dP', { desc = "Better paste" })

-- Cancel
map("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })

-- Diagnostic keymaps
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic error messages" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix list" })

-- Disable arrow keys in normal mode
map("n", "<Up>", "<Nop>", { desc = "Disable up arrow key" })
map("n", "<Down>", "<Nop>", { desc = "Disable down arrow key" })
map("n", "<Left>", "<Nop>", { desc = "Disable left arrow key" })
map("n", "<Right>", "<Nop>", { desc = "Disable right arrow key" })

