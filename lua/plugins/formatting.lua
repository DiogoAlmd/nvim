return {{
    "stevearc/conform.nvim",
    event = {"BufWritePre"},
    cmd = {"ConformInfo"},
    keys = {{
        "<leader>fm",
        function()
            require("conform").format({
                async = true,
                lsp_fallback = true
            })
        end,
        desc = "Format buffer"
    }},
    opts = {
        formatters_by_ft = {
            lua = {"stylua"},
            javascript = {"biome"},
            typescript = {"biome"},
            javascriptreact = {"biome"},
            typescriptreact = {"biome"},
            json = {"biome"},
            yaml = {"prettierd", "prettier"},
            markdown = {"prettierd", "prettier"},
            html = {"biome"},
            css = {"biome"}
        },
        format_on_save = {
            lsp_fallback = true
        }
    }
}, {
    "mfussenegger/nvim-lint",
    event = {"BufReadPre", "BufNewFile"},
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            javascript = {"biomejs"},
            typescript = {"biomejs"},
            javascriptreact = {"biomejs"},
            typescriptreact = {"biomejs"},
            json = {"biomejs"}
            -- lua = { "luacheck" },
        }

        local lint_augroup = vim.api.nvim_create_augroup("lint", {
            clear = true
        })

        vim.api.nvim_create_autocmd({"BufEnter", "BufWritePost", "InsertLeave"}, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end
        })

        vim.keymap.set("n", "<leader>l", function()
            lint.try_lint()
        end, {
            desc = "Trigger linting for current file"
        })
    end
}}
