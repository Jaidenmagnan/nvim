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
      vim.lsp.handlers["textDocument/documentHighlight"] = function() end
      vim.diagnostic.config({
        underline = false,
        line_hl = true,
        update_in_insert = false,
        virtual_text = {
          spacing = 4,
          source = "if_many",
          prefix = "",
        },
        severity_sort = true,
        signs = false,
      })
    end,
  },
}

