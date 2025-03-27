# Neovim Configuration

A modern Neovim configuration focused on web development with a beautiful UI and efficient workflow.

## Features

- 🎨 Beautiful UI with Melange theme
- 📁 File explorer with Neo-tree
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

### File Navigation (Neo-tree)
#### Opening Neo-tree
- `<leader>b` - Toggle file explorer (project root)
- `<leader>e` - Toggle file explorer (current working dir)
- `<leader>E` - Toggle file explorer (current file dir)

#### Navigation Commands
- `hjkl` or arrow keys - Navigate tree
- `l` - Open file/expand directory
- `h` - Close directory
- `v` - Open in vertical split
- `s` - Open in horizontal split
- `t` - Open in new tab
- `w` - Open with window picker

#### File Operations
- `a` - Add new file
- `A` - Add new directory
- `d` - Delete file/directory
- `r` - Rename
- `y` - Copy to clipboard
- `x` - Cut to clipboard
- `p` - Paste from clipboard
- `c` - Copy
- `m` - Move

#### Tree Operations
- `R` - Refresh tree
- `C` or `z` - Close all nodes
- `q` - Close window
- `?` - Show help
- `<` - Previous source
- `>` - Next source

### Window Management
- `<C-h>` - Move to left window
- `<C-j>` - Move to bottom window
- `<C-k>` - Move to top window
- `<C-l>` - Move to right window
- `<C-Up>` - Decrease window height
- `<C-Down>` - Increase window height
- `<C-Left>` - Decrease window width
- `<C-Right>` - Increase window width

### Search (Telescope)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find buffers
- `<leader>fh` - Help tags
- `<leader>fr` - Recent files
- `<leader>fc` - Commands
- `<leader>fs` - Document symbols
- `<leader>fS` - Workspace symbols
- `<leader>fd` - Diagnostics
- `<leader>/` - Fuzzy search in current buffer

### LSP
- `<leader>gd` - Go to definition
- `<leader>gr` - Find references
- `<leader>ca` - Code actions
- `<S-A-f>` - Format file
- `<leader>cf` - Fix ESLint issues
- `<leader>dn` - Next diagnostic
- `<leader>dp` - Previous diagnostic
- `<leader>de` - Show diagnostic details

### Text Manipulation
- `<` and `>` - Indent/unindent (visual mode)
- `J` - Move line down (visual mode)
- `K` - Move line up (visual mode)
- `<C-d>` - Scroll down (centered)
- `<C-u>` - Scroll up (centered)

### Git
- `<leader>gs` - Git status
- `<leader>gb` - Git blame
- `<leader>gl` - Git log
- `]h` - Next hunk
- `[h` - Previous hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hS` - Stage buffer
- `<leader>hu` - Undo stage hunk
- `<leader>hR` - Reset buffer
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>hd` - Diff this
- `<leader>hD` - Diff this ~

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