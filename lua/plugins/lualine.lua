return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin",
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {}, -- { 'tabs', 'filetype' },
        
        lualine_x = {},
        lualine_y = { 'buffers' },
        lualine_z = { 'location', 'progress' }
      },
    })
  end,
}
