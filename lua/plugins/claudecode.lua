return {{
    "coder/claudecode.nvim",
    dependencies = {"folke/snacks.nvim"},
    config = function()
        require("claudecode").setup()
        vim.keymap.set("t", "<leader>af", "<C-\\><C-n><C-w>h", {
            desc = "Exit terminal and focus code"
        })
    end,
    keys = {{
        "<leader>ac",
        "<cmd>ClaudeCode<cr>",
        desc = "Toggle Claude"
    }, {
        "<leader>af",
        "<cmd>ClaudeCodeFocus<cr>",
        desc = "Focus Claude"
    }, {
        "<leader>ar",
        "<cmd>ClaudeCode --resume<cr>",
        desc = "Resume Claude"
    }, {
        "<leader>aC",
        "<cmd>ClaudeCode --continue<cr>",
        desc = "Continue Claude"
    }, {
        "<leader>am",
        "<cmd>ClaudeCodeSelectModel<cr>",
        desc = "Select model"
    }, {
        "<leader>ab",
        "<cmd>ClaudeCodeAdd %<cr>",
        desc = "Add current buffer"
    }, {
        "<leader>as",
        "<cmd>ClaudeCodeSend<cr>",
        mode = "v",
        desc = "Send selection"
    }, {
        "<leader>aa",
        "<cmd>ClaudeCodeDiffAccept<cr>",
        desc = "Accept diff"
    }, {
        "<leader>ad",
        "<cmd>ClaudeCodeDiffDeny<cr>",
        desc = "Deny diff"
    }}
}}
