return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup{
            open_mapping = [[<c-t>]],
            direction = 'horizontal',
            float_opts = {
                -- The border key is *almost* the same as 'nvim_open_win'
                -- see :h nvim_open_win for details on borders however
                -- the 'curved' border is a custom border type
                -- not natively supported but implemented in this plugin.
                border =  'curved',
                -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
                winblend = 2,
              },
        }
        local Terminal  = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({
            cmd = "lazygit",
            dir = "git_dir",
            direction = "float",
            float_opts = {
              border = "double",
            },
            -- function to run on opening the terminal
            on_open = function(term)
              vim.cmd("startinsert!")
              vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
            end,
            -- function to run on closing the terminal
            on_close = function(term)
              vim.cmd("startinsert!")
            end,
          })

        function _lazygit_toggle()
            lazygit:toggle()
        end
    end,
}