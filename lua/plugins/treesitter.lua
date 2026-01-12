return {
  'nvim-treesitter/nvim-treesitter',
  version = false,
  lazy = false,
  build = ":TSUpdate",
  config = function(_, opts)
    require("nvim-treesitter.config").setup(opts)
  end,
  opts = {
    -- LazyVim config for treesitter
    indent = { enable = true },
    highlight = { enable = true },
    folds = { enable = false },
    ensure_installed = {
      "bash",
      "c",
      "diff",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "printf",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
      "go",
      "rust"
    },
  }
}
