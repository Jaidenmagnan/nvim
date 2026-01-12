return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({
        underline = false,
        update_in_insert = false,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          prefix = "",
        },
        severity_sort = true,
        signs = {
          text = {""},
        },
      })
    end,
  },
}

