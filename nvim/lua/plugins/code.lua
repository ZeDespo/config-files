-- LSPs, code formatters, and code linters

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "vim",
        "yaml",
      },
    },
  },
  {
    "williamboman/mason.nvim", -- LSP server orchestrator
    opts = {
      ensure_installed = {
        "debugpy", -- Python debugger
        "stylua",
        "lua-language-server",
        "pyright", -- Python LSP
        "ruff", -- Python formatter
        "rust-analyzer",
        "yaml-language-server", -- All hail yaml LSP
      },
    },
  },
  {
    "neovim/nvim-lspconfig", -- LSP config loader
    opts = {
      servers = {
        pyright = {
          settings = {
            disableOrganizeImports = true,
            pythonPath = vim.g.python3_host_prog,
            analysis = { ignore = { "*" } },
          },
        },
        ruff = {
          init_options = {
            settings = {
              configuration = "~/.config/ruff/pyproject.toml",
              configurationPreference = "filesystemFirst",
            },
          },
        },
        yamlls = {
          settings = {
            format = {
              enable = true,
              printWidth = 88,
            },
            validate = true,
            hover = true,
            completion = true,
          },
        },
      },
    },
  },
}

-- require("conform.nvim").opts.formatters_by_ft = {
--   lua = { "stylua" },
--   yml = { "yamlfix" },
--   yaml = { "yamlfix" },
-- }
-- require("conform.nvim").opts.formatters.yamlfix = {
--   env = {
--     YAMLFIX_COMMENTS_MIN_SPACES_FROM_CONTENT = "4",
--     YAMLFIX_SECTION_WHITELINES = "1",
--     YAMLFIX_SEQUENCE_STYLE = "block_style",
--     YAMLFIX_INDENT_MAPPING = "4",
--     YAMLFIX_INDENT_SEQUENCE = "4",
--     YAMLFIX_LINE_LENGTH = "88",
--   },
-- }
