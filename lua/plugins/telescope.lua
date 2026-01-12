return {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
      { '<leader><leader>', function() 
        require('telescope.builtin').find_files({ cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1] })
      end, desc = 'Find files',
    },

    { '<leader>/', function() 
      require('telescope.builtin').live_grep({ cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1] })
   end, desc = 'Live grep',
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
