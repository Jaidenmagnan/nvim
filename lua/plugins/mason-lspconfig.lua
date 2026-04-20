return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            -- ensure_installed = { "jdtls" },
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- vim.lsp.handlers is removed in 0.12; use vim.lsp.config instead
            vim.lsp.config("*", {
                capabilities = vim.lsp.protocol.make_client_capabilities(),
            })

            vim.diagnostic.config({
                underline = false,
                update_in_insert = false,
                virtual_text = {
                    spacing = 4,
                    source = "if_many",
                    prefix = "",
                },
                -- 'line_hl' is not valid; use virtual_lines if you want line-level display
                virtual_lines = false,
                severity_sort = true,
                signs = false,
            })

            --vim.lsp.enable("jdtls")
        end,
    },
}
