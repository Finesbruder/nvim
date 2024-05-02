-- local wk = require("which-key")
-- wk.register({
--     -- ["<leader>a"] = { name = "test" },
--     ["gd"] =  { vim.lsp.buf.definition, "Lsp Definition" },   
--     ["<leader>rh"] =  { "<cmd>noh<CR>", "Remove highlights" },
--     ["<leader><leader>oi"] =  { "<Cmd>lua require'jdtls'.organize_imports()<CR>", "Organize Imports" },
--     ["<leader><leader>tm"] =  { "<Cmd>lua require'jdtls'.test_nearest_method()<CR>", "Test Method" },
--     ["<leader><leader>tc"] =  { "<Cmd>lua require'jdtls'.test_class()<CR>", "Test Class" },
--     ["<leader><leader>ev"] =  { "<Cmd>lua require('jdtls').extract_variable()<CR>", "Extract variable" },
-- })

local map = vim.keymap.set
-- Window Options
map("n", "<S-up>", ":resize +1<CR>", {})
map("n", "<S-down>", ":resize -1<CR>", {})
map("n", "<S-left>", ":vertical resize +1<CR>", {})
map("n", "<S-right>", ":vertical resize -1<CR>", {})
map("n", "<leader>d", ":bp<bar>sp<bar>bn<bar>bd<CR>", {});

-- Navigation
map("n", "<tab>", ":bnext<CR>", {})
map("n", "<S-tab>", ":bprev<CR>", {})
map("n", "<up>", "<C-w>k", {})
map("n", "<down>", "<C-w>j", {})
map("n", "<left>", "<C-w>h", {})
map("n", "<right>", "<C-w>l", {})
map("n", "<C-p>", ":Neotree filesystem toggle<CR>", {})
map("n", "<C-d>", "<C-d>zz", {})
map("n", "<C-u>", "<C-u>zz", {})
map("i", "<C-h>", "<left>", {})
map("i", "<C-l>", "<right>", {})

map("i", "jj", "<esc>", {})
map("i", "jk", "<esc>", {})

-- select all
map("n", "<C-a>", "ggVG", opts)

-- ctrl + x to cut full line
map("n", "<C-x>", "dd", opts)

-- Move selected line / block of text in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Save file
map('n', '<C-s>', ":w<CR>", {})
map('i', '<C-s>', "<ESC>:w<CR>", {})
map('n', '<leader><C-s>', ":saveas %:h\\", {})
map("n", "<Leader>q", ":q!<CR>", opts)


-- copy everything between { and } including the brackets
-- p puts text after the cursor,
-- P puts text before the cursor.
map("n", "YY", "va{Vy", opts)

-- Refactoring
map("v", '<C-o>', ":sort<CR>", {}) 
map("n", "<A-j>", ":move +1<CR>", {})
map("n", "<A-k>", ":move -2<CR>", {})
map("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>", {})

-- Code Hilfe 
map("i", "\"", "\"\"<left>", {})
map("i", "(", "()<left>", {})
map('n', '<CR>', function()
    if vim.o.buftype == 'quickfix' then
      return "<CR>:cclose<CR>"
    elseif vim.o.buftype == 'loclist' then
       return "<CR>:lclose<CR>"
    else
      return "o<ESC>"
    end
  end, {expr = true, replace_keycodes = true})
  

-- Macro gedöns 
map("n", "Q", "@qj", {})
map("x", "Q", ":norm @q<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>zz", ":ZenMode<CR>", {})
