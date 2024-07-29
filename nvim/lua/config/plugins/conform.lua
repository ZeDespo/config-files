require("conform.nvim").opts.formatters_by_ft = {
  lua = { "stylua" },
  yml = { "yamlfix" },
  yaml = { "yamlfix" },
}
require("conform.nvim").opts.formatters.yamlfix = {
  env = {
    YAMLFIX_COMMENTS_MIN_SPACES_FROM_CONTENT = "4",
    YAMLFIX_SECTION_WHITELINES = "1",
    YAMLFIX_SEQUENCE_STYLE = "block_style",
    YAMLFIX_INDENT_MAPPING = "4",
    YAMLFIX_INDENT_SEQUENCE = "4",
    YAMLFIX_LINE_LENGTH = "88",
  },
}
