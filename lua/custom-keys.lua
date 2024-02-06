-- Change:
vim.keymap.set("n", '<leader>cn', vim.lsp.buf.rename, {}) 
-- Finding:
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Go:
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

-- Hover:
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})

-- Inspect:
vim.keymap.set("n", "<leader>i", vim.lsp.signature_help, {})

-- Quickfixes:
vim.keymap.set("n", "<leader>qa", vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>qf', vim.lsp.buf.format, {})

-- Window Options
vim.keymap.set("n", "<S-up>", ":resize +1<CR>", {})
vim.keymap.set("n", "<S-down>", ":resize -1<CR>", {})
vim.keymap.set("n", "<S-left>", ":vertical resize +1<CR>", {})
vim.keymap.set("n", "<S-right>", ":vertical resize -1<CR>", {})
vim.keymap.set("n", "<leader>d", ":bp<bar>sp<bar>bn<bar>bd<CR>", {});

-- Navigation
vim.keymap.set("n", "<tab>", ":bnext<CR>", {})
vim.keymap.set("n", "<S-tab>", ":bprev<CR>", {})
vim.keymap.set("n", "<C-k>", "<C-w>w", {})
vim.keymap.set("n", "<C-j>", "<C-w>W", {})
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle<CR>", {})
-- center cursor 
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})


-- Save file
vim.keymap.set('n', '<C-s>', ":w<CR>", {})
vim.keymap.set('i', '<C-s>', "<ESC>:w<CR>", {})
vim.keymap.set('n', '<leader><C-s>', ":saveas %:h\\", {})

-- Refactoring
vim.keymap.set("v", '<C-o>', ":sort<CR>", {}) 
vim.keymap.set("n", "<A-down>", ":move +1<CR>", {})
vim.keymap.set("n", "<A-up>", ":move -2<CR>", {})
vim.keymap.set("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>", {})

    -- Deletes selected text, moves to new window, pastes and saves in cwd 
-- vim.keymap.set("v", "<tab>", "d<bar>:vsplit<CR><bar>:e %:h\\tempfile.txt<CR><bar>p<bar>:saveas %:h\\", {})

-- Code Hilfe 
    -- Brackets
vim.keymap.set("i", "'", "''<left>", {})
vim.keymap.set("i", "\"", "\"\"<left>", {})
vim.keymap.set("i", "(", "()<left>", {})
vim.keymap.set("i", "[", "[]<left>", {})
vim.keymap.set("i", "{<CR>", "{}<left><CR><up><ESC>$o", {})
-- vim.keymap.set("i", "{<Space>", "{<space><space>}<left><left>", {})
vim.keymap.set("i", "{;", "{};<left><left>", {})
vim.keymap.set("i", "{", "{}<left>", {})
vim.keymap.set("n", "<CR>", "o<ESC>", {})


vim.keymap.set("n", "<leader>tt", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>tw", function() require("trouble").open("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>td", function() require("trouble").open("document_diagnostics") end)
vim.keymap.set("n", "<leader>tq", function() require("trouble").open("quickfix") end)
vim.keymap.set("n", "<leader>tl", function() require("trouble").open("loclist") end)
vim.keymap.set("n", "<leader>tr", function() require("trouble").open("lsp_references") end)

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>zz", ":ZenMode<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>c", ":noh<CR>", {})


-- Wünsche:
-- diagnostics unter zeile und bessere markierung
--  am besten solle ich die multiline diags togglen können. Standartmaessig sollen squiggly lines kommen, außer für error, da die meldung drunter 
-- formatter für typescript

