return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  -- This will provide type hinting with LuaLS
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, lsp_format = 'fallback' },
    -- Define your formatters
    formatters_by_ft = {
      lua = { 'stylua' },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
    },
  },
}
