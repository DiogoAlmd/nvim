# Neovim Configuration

A modern Neovim configuration focused on web development with a beautiful UI and efficient workflow.

## Features

- 🎨 Beautiful UI with Carbonfox theme
- 📁 Built-in file explorer with enhanced Netrw
- 🔍 Fuzzy finding with Telescope
- ⚡ Fast completion with nvim-cmp
- 🔧 Built-in LSP configuration
- 🌳 Syntax highlighting with Treesitter
- 🔄 Git integration
- 🎯 Format on save
- ⌨️ Intuitive keybindings

## Key Bindings

### General
- `<Space>` - Leader key
- `<C-s>` - Save file
- `<Esc>` - Clear search highlighting
- `<leader>uc` - Toggle code completion
- `<C-⌥-Space>` - Trigger code completion (in insert mode)

### File Navigation and Search
#### Netrw (File Explorer)
- `<leader>pv` - Open Netrw in current directory
- `<leader>pc` - Open Netrw at current file location

#### Telescope (Fuzzy Finder)
- `<leader>pf` - Find files
- `<leader>ps` - Search in files (live grep)
- `<leader>pb` - Find buffers
- `<leader>pg` - Find git files

#### Buffer Navigation
- `<S-h>` - Go to previous buffer
- `<S-l>` - Go to next buffer
- `<leader>bd` - Delete current buffer
- `<leader>ba` - Show all buffers in windows
- `<leader>bn` - Create new buffer

#### Split Management
- `<leader>vv` - Split window vertically
- `<leader>vh` - Split window horizontally
- `<leader>ve` - Make split windows equal size
- `<leader>vx` - Close current split

#### Split Navigation
- `⌥-h` - Move to left split
- `⌥-j` - Move to split below
- `⌥-k` - Move to split above
- `⌥-l` - Move to right split
- `⌥-↑` - Decrease window height
- `⌥-↓` - Increase window height
- `⌥-←` - Decrease window width
- `⌥-→` - Increase window width

### LSP and Code Navigation
- `gd` - Go to definition
- `gD` - Go to declaration
- `gi` - Go to implementation
- `gr` - Go to references
- `K` - Show hover documentation
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `<leader>qf` - Quick fix
- `<leader>f` - Format document
- `<leader>e` - Show diagnostics in float
- `[d` - Go to previous diagnostic
- `]d` - Go to next diagnostic
- `<leader>q` - Show diagnostics in location list

### Workspace Management
- `<leader>wa` - Add workspace folder
- `<leader>wr` - Remove workspace folder
- `<leader>wl` - List workspace folders

### Diagnostic Navigation
- `<leader>e` - Show diagnostic details
- `<leader>dn` - Next diagnostic
- `<leader>dp` - Previous diagnostic
- `[d` - Previous diagnostic
- `]d` - Next diagnostic
- `<leader>q` - Open diagnostic quickfix list

### Window Management
- `⌥-h` - Move to left window
- `⌥-j` - Move to bottom window
- `⌥-k` - Move to top window
- `⌥-l` - Move to right window
- `⌥-↑` - Decrease window height
- `⌥-↓` - Increase window height
- `⌥-←` - Decrease window width
- `⌥-→` - Increase window width

### Text Manipulation
- `<` and `>` - Indent/unindent (visual mode)
- `J` - Move line down (visual mode)
- `K` - Move line up (visual mode)
- `<C-d>` - Scroll down (centered)
- `<C-u>` - Scroll up (centered)

### Search and Save
- `n` - Next search result (centered)
- `N` - Previous search result (centered)
- `<Esc>` - Clear search highlighting
- `<C-s>` - Save file

### Clipboard and Paste
- `y` - Yank to system clipboard
- `p` - Paste from system clipboard
- `P` - Paste before from system clipboard

### 📝 Comments (Comment.nvim)

| Keybinding | Mode         | Description                             |
|------------|--------------|-----------------------------------------|
| `gc`       | Visual/Normal| Toggle line comment (operator-pending)  |
| `gb`       | Visual/Normal| Toggle block comment (operator-pending) |
| `gcc`      | Normal       | Toggle line comment for current line    |
| `gbc`      | Normal       | Toggle block comment for current line   |
| `gcO`      | Normal       | Add comment line **above**              |
| `gco`      | Normal       | Add comment line **below**              |
| `gcA`      | Normal       | Add comment at **end of current line**  |

> 💡 In visual mode, `gc` or `gb` comment the selected block.  
> In normal mode, `gcc` and `gbc` act on the current line.

### 🔀 Move Lines / Blocks

| Keybinding    | Mode   | Description              |
|---------------|--------|--------------------------|
| `<leader>mj`  | Normal | Move current line down   |
| `<leader>mk`  | Normal | Move current line up     |
| `<leader>mj`  | Visual | Move selected block down |
| `<leader>mk`  | Visual | Move selected block up   |

> 💡 `m` stands for *move*, `j` for down, `k` for up.


## Installation

1. Backup your existing Neovim configuration:
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. Clone this repository:
```bash
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
```

3. Start Neovim:
```bash
nvim
```

The configuration will automatically:
- Install the plugin manager (lazy.nvim)
- Install all plugins
- Set up the Melange color scheme
- Configure LSP servers

## Requirements

- Neovim >= 0.9.2
- Git
- A Nerd Font (for icons)
- Node.js (for LSP servers)
- ripgrep (for Telescope live grep)