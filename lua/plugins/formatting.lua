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
            python = {"isort", "black"},
            javascript = {"biome", "prettierd", "prettier"},
            typescript = {"biome", "prettierd", "prettier"},
            javascriptreact = {"biome", "prettierd", "prettier"},
            typescriptreact = {"biome", "prettierd", "prettier"},
            json = {"biome", "prettierd", "prettier"},
            yaml = {"prettierd", "prettier"},
            markdown = {"prettierd", "prettier"},
            html = {"prettierd", "prettier"},
            css = {"prettierd", "prettier"}
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
            -- python = { "pylint" },
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
