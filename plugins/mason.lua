-- customize mason plugins
return {
    {
        "williamboman/mason.nvim",
        cmd = {
            "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll",
            "MasonLog", "MasonUpdate", -- AstroNvim extension here as well
            "MasonUpdateAll" -- AstroNvim specific
        },
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_uninstalled = "✗",
                    package_pending = "⟳"
                }
            },
            keymaps = {
                -- Keymap to apply language filter
                apply_language_filter = "F"
            }
        },
        config = require "plugins.configs.mason"
    }, {
        "williamboman/mason-lspconfig.nvim",
        -- overrides `require("mason-lspconfig").setup(...)`
        opts = {
            -- ensure_installed = { "lua_ls" },
        }
    },
    -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
    {
        "jay-babu/mason-null-ls.nvim",
        -- overrides `require("mason-null-ls").setup(...)`
        opts = {
            -- ensure_installed = { "prettier", "stylua" },
        }
    }, {
        "jay-babu/mason-nvim-dap.nvim",
        -- overrides `require("mason-nvim-dap").setup(...)`
        opts = {
            -- ensure_installed = { "python" },
        }
    }
}
