local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

-- new context_commentstring setup
require("ts_context_commentstring").setup {}
vim.g.skip_ts_context_commentstring_module = true

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "c",
    "markdown",
    "vue",
    "scss",
    "markdown_inline",
    "tsx",
    "typescript",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua",
    "rust"
  },
  autotag = {
    enable = true,
    enable_close_on_slash = false,
  },
  -- context_commentstring = {
  --   enable = true,
  --   enable_autocmd = false
  -- }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
