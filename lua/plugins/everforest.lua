return {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        background = "medium",
        transparent_background_level = 0,
        italics = true,
        disable_italic_comments = false,
        sign_column_background = "grey",
        float_style = "dim",
        dim_inactive_windows = false,
        on_highlights = function(hl, _)
          hl["@symbol"] = { link = "@field" }
        end,
      })
    vim.cmd.colorscheme("everforest")
    end,

}