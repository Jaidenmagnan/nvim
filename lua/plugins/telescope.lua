local function find_project_root()
    -- Look for .git upward from the current file's directory
    local root = vim.fs.root(0, { ".groot", ".git" })
    return root or vim.fn.expand("%:p:h")
end

return {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.1",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- optional but recommended
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
        {
            "<leader><leader>",
            function()
                require("telescope.builtin").find_files({ cwd = find_project_root() })
            end,
            desc = "Find files in Project Root",
        },

        {
            "<leader>/",
            function()
                require("telescope.builtin").live_grep({ cwd = find_project_root() })
            end,
            desc = "Live grep (Root)",
        },
        {
            "<leader>cd",
            "<cmd>Telescope diagnostics<CR>",
            desc = "Diagnostics",
        },

        {
            "gd",
            "<cmd>Telescope lsp_definitions<CR>",
            desc = "Go to Definition",
        },
        {
            "gD",
            "<cmd>Telescope lsp_declarations<CR>",
            desc = "Go to Declaration",
        },
        {
            "gr",
            "<cmd>Telescope lsp_references<CR>",
            desc = "References",
        },
        {
            "gi",
            "<cmd>Telescope lsp_implementations<CR>",
            desc = "Go to Implementation",
        },
        {
            "gt",
            "<cmd>Telescope lsp_type_definitions<CR>",
            desc = "Go to Type Definition",
        },
    },
}
