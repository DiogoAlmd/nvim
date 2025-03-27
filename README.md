# Neovim Configuration

A modern Neovim configuration for full-stack development with support for:
- JavaScript/TypeScript
- React/React Native
- Node.js
- Python
- Lua
- Testing (Jest/Vitest)
- and more...

## Features

- 🌳 File Explorer with Neo-tree
- 🔍 Fuzzy finding with Telescope
- ✨ Syntax highlighting with Treesitter
- 🎯 Auto-completion with nvim-cmp
- 📝 LSP support for multiple languages
- 🔧 Built-in formatting and linting
- 🧪 Testing integration
- 🎨 Beautiful UI with Catppuccin theme

## Installation

### Prerequisites

Ensure you have the following installed:
- Neovim >= 0.9.0
- Git
- Node.js (for LSP servers)
- Python (for Python development)
- ripgrep (for Telescope live grep)
- JetBrains Mono Nerd Font (for icons and best experience)

### Setup Commands

1. **Install Neovim Plugins**
   Open Neovim and run:
   ```vim
   :Lazy
   ```
   This will install all the plugins specified in your configuration.

2. **Install Language Servers and Tools**
   Use npm to install the necessary language servers and tools:
   ```bash
   npm install -g typescript-language-server eslint_d tailwindcss-language-server prettier
   ```

3. **Install Python Tools**
   Use pip to install Python tools:
   ```bash
   pip install black isort
   ```

4. **Install Fonts**
   Install JetBrains Mono Nerd Font using Homebrew:
   ```bash
   brew tap homebrew/cask-fonts
   brew install --cask font-jetbrains-mono-nerd-font
   ```
   Configure your terminal to use "JetBrainsMono Nerd Font" or "JetBrainsMono Nerd Font Mono".

### Configuration

- **Leader Key**: The leader key is set to `<Space>`.
- **Theme**: The configuration uses the Catppuccin theme by default.

## Key Mappings

> Leader key is set to `<Space>`

### File Explorer (Neo-tree)
- `<leader>b` - Toggle file explorer (root dir)
- `<leader>e` - Toggle file explorer (current working dir)
- `<leader>E` - Toggle file explorer (current file's directory)

### File Finding (Telescope)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep (search in files)
- `<leader>fb` - Browse buffers
- `<leader>fh` - Search help tags
- `<leader>fr` - Recent files
- `<leader>fc` - Commands
- `<leader>fs` - Document symbols
- `<leader>fS` - Workspace symbols
- `<leader>fd` - Diagnostics
- `<leader>/` - Fuzzy search in current buffer

### LSP Features
- `gD` - Go to declaration
- `gd` - Go to definition
- `K` - Show hover information
- `gi` - Go to implementation
- `<C-k>` - Show signature help
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `gr` - Show references
- `<leader>f` - Format code
- `[d` and `]d` - Navigate diagnostics
- `<leader>e` - Show diagnostic details

### Git Integration
- `]h` and `[h` - Next/previous hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hS` - Stage buffer
- `<leader>hu` - Undo stage hunk
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>gs` - Git status
- `<leader>gb` - Git blame
- `<leader>gl` - Git log

### Testing
- `<leader>tt` - Run nearest test
- `<leader>tf` - Run current test file
- `<leader>ts` - Toggle test summary
- `<leader>to` - Show test output

### Code Formatting and Linting
- `<leader>fm` - Format buffer
- `<leader>l` - Trigger linting
- Auto-format on save is enabled
- Auto-linting on file changes is enabled

### Completion and Snippets
- `<Tab>` - Next completion item
- `<S-Tab>` - Previous completion item
- `<C-Space>` - Trigger completion
- `<C-e>` - Close completion window
- `<CR>` - Confirm completion

### Window Management
- `<C-h/j/k/l>` - Navigate between windows
- `<C-Up/Down/Left/Right>` - Resize windows
- `<S-h/l>` - Navigate between buffers

### Code Navigation
- `<C-space>` - Increment selection (Treesitter)
- `<bs>` - Decrement selection (Treesitter)

### Additional Features
- Auto-pairs for brackets, quotes, etc.
- Auto-tag closing for HTML/JSX
- Smart indentation
- Persistent undo history
- Clipboard integration
- File auto-save on leaving insert mode
- Git signs in the gutter
- Status line with useful information
- Buffer line for easy buffer navigation

## Package Management
- `:Mason` - Open Mason package manager
- `:LspInfo` - Check LSP status
- `:ConformInfo` - Check formatter status

## Customization

### Changing Theme
The configuration uses Catppuccin theme by default. To change themes:
1. Add your preferred theme plugin in `lua/plugins/theme.lua`
2. Update the colorscheme configuration
3. Update the lualine theme if needed

Example for adding a new theme:
```lua
return {
  {
    "your-theme-plugin",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("your-theme-name")
    end,
  }
}
```

### Catppuccin Flavor
The default flavor is "mocha" (dark). You can change the flavor by modifying the theme configuration in `lua/plugins/theme.lua`:

```lua
require("catppuccin").setup({
  flavour = "frappe", -- latte, frappe, macchiato, mocha
  -- other options...
})
```

### Changing Font
The configuration uses JetBrains Mono Nerd Font by default. To change the font:
1. Install your preferred Nerd Font
2. Update your terminal's font settings
3. The configuration will automatically use your terminal's font settings

## Requirements

- Neovim >= 0.9.0
- Git
- A C compiler (for treesitter)
- Node.js (for LSP servers)
- Python (for Python development)
- ripgrep (for Telescope live grep)
- JetBrains Mono Nerd Font (for icons and best experience) 