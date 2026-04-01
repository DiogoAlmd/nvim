return {{
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {"mason.nvim", "mason-lspconfig.nvim", "williamboman/mason-lspconfig.nvim", "hrsh7th/cmp-nvim-lsp"},
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local servers = {{"ts_ls", {
            capabilities = capabilities
        }}, {"ruff", {
            capabilities = capabilities
        }}, {"basedpyright", {
            capabilities = capabilities,
            settings = {
                basedpyright = {
                    disableOrganizeImports = true
                }
            }
        }}, {"jsonls", {
            capabilities = capabilities
        }}, {"lua_ls", {
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"}
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false
                    },
                    telemetry = {
                        enable = false
                    }
                }
            }
        }}}

        for _, lsp in ipairs(servers) do
            local name, config = lsp[1], lsp[2]
            if config then
                vim.lsp.config(name, config)
            end
            vim.lsp.enable(name)
        end

        -- Disable ruff hover in favor of basedpyright
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", {
                clear = true
            }),
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if client == nil then
                    return
                end
                if client.name == "ruff" then
                    client.server_capabilities.hoverProvider = false
                end
            end
        })

        -- Keymaps
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = {
                    buffer = ev.buf
                }
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
                vim.keymap.set("n", "<C-o>", vim.lsp.buf.signature_help, opts)
                vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
                vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
                vim.keymap.set("n", "<leader>wl", function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end, opts)
                vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "<leader>cf", function()
                    vim.lsp.buf.format {
                        async = true
                    }
                end, opts)
            end
        })
    end
}, {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = {{
        "<leader>cm",
        "<cmd>Mason<cr>",
        desc = "Mason"
    }},
    build = ":MasonUpdate",
    opts = {
        ensure_installed = {"typescript-language-server", "lua-language-server", "json-lsp", "prettier", "stylua",
                            "ruff", "basedpyright", "biome"}
    },
    config = function(_, opts)
        require("mason").setup(opts)
        local mr = require("mason-registry")
        local function ensure_installed()
            for _, tool in ipairs(opts.ensure_installed) do
                local p = mr.get_package(tool)
                if not p:is_installed() then
                    p:install()
                end
            end
        end
        if mr.refresh then
            mr.refresh(ensure_installed)
        else
            ensure_installed()
        end
    end
}, {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        automatic_installation = true
    }
}}
