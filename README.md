# Neovim Configuration

A modern Neovim configuration focused on web development with a beautiful UI and efficient workflow.

## Features

- 🎨 Beautiful UI with Melange theme
- 📁 Built-in file explorer with enhanced Netrw
- 🔍 Fuzzy finding with Telescope
- ⚡ Fast completion with nvim-cmp
- 🔧 Built-in LSP configuration
- 🌳 Syntax highlighting with Treesitter
- 🔄 Git integration
- 🎯 Format on save
- ⌨️ Intuitive keybindings

## File Icons

The configuration includes custom file icons for better visibility:

### Development Files
- JavaScript (`.js`) - 
- TypeScript (`.ts`) - 󰛦
- React (`.jsx`) - 
- React TS (`.tsx`) - 
- Vue (`.vue`) - 󰡄
- CSS (`.css`) - 
- SCSS (`.scss`) - 
- HTML (`.html`) - 
- Lua (`.lua`) - 
- Python (`.py`) - 
- JSON (`.json`) - 
- YAML (`.yaml`) - 
- TOML (`.toml`) - 

### Documentation & Config
- Markdown (`.md`) - 
- Environment (`.env`) - 
- Git (`.gitignore`) - 

### Media Files
- Images (`.jpg`, `.jpeg`, `.png`) - 
- Vector (`.svg`) - 

### Folder Icons
- Closed Folder - 
- Open Folder - 
- Empty Folder - 
- Empty Open Folder - 

### Git Status Icons
- Added - 
- Modified - 
- Deleted - ✖
- Renamed - 󰁕
- Untracked - 
- Ignored - 
- Unstaged - 󰄱
- Staged - 
- Conflict - 

## Key Bindings

### General
- `<Space>` - Leader key
- `<C-s>` - Save file
- `<Esc>` - Clear search highlighting
- `<M-Space>` - Trigger code completion

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
- `<leader>sv` - Split window vertically
- `<leader>sh` - Split window horizontally
- `<leader>se` - Make split windows equal size
- `<leader>sx` - Close current split
- `<C-h>` - Move cursor to left split
- `<C-j>` - Move cursor to split below
- `<C-k>` - Move cursor to split above
- `<C-l>` - Move cursor to right split

### LSP and Code Navigation
- `gd` - Go to definition
- `gD` - Go to declaration
- `gr` - Find references
- `gi` - Go to implementation
- `K` - Show hover information
- `<C-k>` - Show signature help
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `<leader>cf` - Fix ESLint issues
- `<S-A-f>` - Format code

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
- `<C-h>` - Move to left window
- `<C-j>` - Move to bottom window
- `<C-k>` - Move to top window
- `<C-l>` - Move to right window
- `<C-Up>` - Decrease window height
- `<C-Down>` - Increase window height
- `<C-Left>` - Decrease window width
- `<C-Right>` - Increase window width

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