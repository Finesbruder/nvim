return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin",
        disabled_filetypes = { "packer", "neotree", "neo-tree" },
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {},

        lualine_x = {},
        lualine_y = { "buffers" },
        lualine_z = { "location", "progress" },
      },
      tabline = {
        lualine_a = { "tabs" },
      },
      inactive_winbar = {
        lualine_a = { "branch "},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      }
    })
  end,
}

-- sections = {
--   lualine_a = { 'mode' },
--   lualine_b = { 'branch', 'diff', 'diagnostics' },
--   lualine_c = {},

--   lualine_x = {},
--   lualine_y = { 'buffers' },
--   lualine_z = { 'location', 'progress' }
-- },

-- lualine_b = {
--   'branch',
--   'diff',
--   {
--     'diagnostics',
--     source = { 'nvim' },
--     sections = { 'error' },
--     diagnostics_color = { error = { bg = colors.red, fg = colors.white } },
--   },
--   {
--     'diagnostics',
--     source = { 'nvim' },
--     sections = { 'warn' },
--     diagnostics_color = { warn = { bg = colors.orange, fg = colors.white } },
--   },
--   { 'filename', file_status = false, path = 1 },
--   { modified, color = { bg = colors.red } },
--   {
--     '%w',
--     cond = function()
--       return vim.wo.previewwindow
--     end,
--   },
--   {
--     '%r',
--     cond = function()
--       return vim.bo.readonly
--     end,
--   },
--   {
--     '%q',
--     cond = function()
--       return vim.bo.buftype == 'quickfix'
--     end,
--   },
-- },
