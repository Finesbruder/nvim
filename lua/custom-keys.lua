local wk = require("which-key")
wk.register({
    c = {
        name = "Change",
        a = {vim.lsp.buf.code_action, "Code Action"},
        n = {vim.lsp.buf.rename, "Name"},
        f = {vim.lsp.buf.format, "Format file"},
    },
    f = {
        name = "Find",
        b = { ":Telescope buffers<cr>", "Buffers" }, 
        e = {":TroubleToggle document_diagnostics<CR>", "File Errors"},
        E = {":TroubleToggle workspace_diagnostics<CR>", "Project Errors"},
        f = { ":Telescope find_files<cr>", "Find File" },
        g = { ":Telescope live_grep<cr>", "Live Grep" }, 
    },
    i = {
        name = "Inspect",
        d = { vim.lsp.buf.hover, "Documentation" }, 
        e = {":lua vim.diagnostic.open_float()<CR>", "Error"},
        r = { function() require("trouble").toggle("lsp_references") end, "References" }, 
        s = { vim.lsp.buf.signature_help, "Signature" },
    },
    n = {
        name = "Next",
        e = {":lua vim.diagnostic.goto_next()<CR>", "Error"},
    },
    p = {
        name = "Prev",
        e = {":lua vim.diagnostic.goto_prev()<CR>", "Prev Error"},
    },
    s = {
        name = "Show",
        e = { function() require("lsp_lines").toggle() end, "Errors"},
        q = {":TroubleToggle quickfix<CR>", "Quickfix items"},
    },
  }, { prefix = "<leader>" })
wk.register({
    -- ["<leader>a"] = { name = "test" },
    ["gd"] =  { vim.lsp.buf.definition, "Lsp Definition" },   
    ["<leader>rh"] =  { "<cmd>noh<CR>", "Remove highlights" },   

})
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
vim.keymap.set("n", "<C-o>", ":Neotree filesystem toggle<CR>", {})
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

-- Code Hilfe 
vim.keymap.set("i", "'", "''<left>", {})
vim.keymap.set("i", "\"", "\"\"<left>", {})
vim.keymap.set("i", "(", "()<left>", {})
vim.keymap.set("i", "[", "[]<left>", {})
vim.keymap.set("i", "{<CR>", "{}<left><CR><up><ESC>$o", {})
vim.keymap.set("i", "{;", "{};<left><left>", {})
vim.keymap.set("i", "{", "{}<left>", {})
vim.keymap.set("n", "<CR>", "o<ESC>", {})

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>zz", ":ZenMode<CR>", {})


-- Wünsche:
-- formatter für typescript

