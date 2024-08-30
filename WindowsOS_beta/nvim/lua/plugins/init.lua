return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    build = ":TSUpdate",
    version = false,
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "c",
                "css",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "python",
                "query",
                "racket",
                "regex",
                "rust",
                "vim",
                "vimdoc",
            },
            indent = { enable = true },
            highlight = {
                disable = { "latex" },
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            matchup = { enable = true },
        })
    end,
  }
  -- {
  --  	"nvim-treesitter/nvim-treesitter",
  --  	opts = {
  --  		ensure_installed = {
  --  			"vim", "lua", "vimdoc",
  --       "html", "css"
  --  		},
  --  	},
  -- },
}
