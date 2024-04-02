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
        b = {":Telescope buffers<cr>", "Buffers" }, 
        e = {":TroubleToggle document_diagnostics<CR>", "File Errors"},
        E = {":TroubleToggle workspace_diagnostics<CR>", "Project Errors"},
        f = {":Telescope find_files<cr>", "Find File" },
        g = {":Telescope live_grep<cr>", "Live Grep" }, 
        R = {function() require("trouble").toggle("lsp_references") end, "References" }, 
        s = {":Telescope lsp_document_symbols<cr>", "Symbols" }, 
    },
    i = {
        name = "Inspect",
        d = { vim.lsp.buf.hover, "Documentation" }, 
        e = {":lua vim.diagnostic.open_float()<CR>", "Error"},
        s = { vim.lsp.buf.signature_help, "Signature" },
    },
    n = {
        name = "Next",
        e = {":lua vim.diagnostic.goto_next()<CR>", "Error"},
        l = {"<cmd>lnext<CR>zz", "Loclist item"},
        q = {"<cmd>cnext<CR>zz", "Quickfix item"},
    },
    p = {
        name = "Prev",
        e = {":lua vim.diagnostic.goto_prev()<CR>", "Error"},
        l = {"<cmd>lprev<CR>zz", "Loclist item"},
        q = {"<cmd>cprev<CR>zz", "Quickfix item"},
    },
    s = {
        name = "Show",
        e = { function() require("lsp_lines").toggle() end, "Errors"},
        q = {":TroubleToggle quickfix<CR>", "Quickfix items"},
        t = {":tabs<CR>", "Open Tabs"},
    },
    t = {
        name = "Tab",
        d = {":tab vim.lsp.buf.definition<cr>", "Definition in neuem Tab" },
        n = {":tabnew<CR>", "New Tab"},
        o = {":tabo<CR>", "Close all other tabs"},
        q = {":tabc<CR>", "Close current Tab"},
    },
  }, { prefix = "<leader>" })
  wk.register({
    c = {
        name = "Change",
        a = {vim.lsp.buf.code_action, "Code Action"},
        n = {vim.lsp.buf.rename, "Name"},
        f = {vim.lsp.buf.format, "Format file"},
    },
    f = {
        name = "Find",
        b = {":Telescope buffers<cr>", "Buffers" }, 
        e = {":TroubleToggle document_diagnostics<CR>", "File Errors"},
        E = {":TroubleToggle workspace_diagnostics<CR>", "Project Errors"},
        f = {":Telescope find_files<cr>", "Find File" },
        g = {":Telescope live_grep<cr>", "Live Grep" }, 
        R = {function() require("trouble").toggle("lsp_references") end, "References" }, 
        s = {":Telescope lsp_document_symbols<cr>", "Symbols" }, 
    },
    i = {
        name = "Inspect",
        d = { vim.lsp.buf.hover, "Documentation" }, 
        e = {":lua vim.diagnostic.open_float()<CR>", "Error"},
        s = { vim.lsp.buf.signature_help, "Signature" },
    },
    n = {
        name = "Next",
        e = {":lua vim.diagnostic.goto_next()<CR>", "Error"},
        l = {"<cmd>lnext<CR>zz", "Loclist item"},
        q = {"<cmd>cnext<CR>zz", "Quickfix item"},
    },
    p = {
        name = "Prev",
        e = {":lua vim.diagnostic.goto_prev()<CR>", "Error"},
        l = {"<cmd>lprev<CR>zz", "Loclist item"},
        q = {"<cmd>cprev<CR>zz", "Quickfix item"},
    },
    s = {
        name = "Show",
        e = { function() require("lsp_lines").toggle() end, "Errors"},
        q = {":TroubleToggle quickfix<CR>", "Quickfix items"},
        t = {":tabs<CR>", "Open Tabs"},
    },
    t = {
        name = "Tab",
        d = {":tab vim.lsp.buf.definition<cr>", "Definition in neuem Tab" },
        n = {":tabnew<CR>", "New Tab"},
        o = {":tabo<CR>", "Close all other tabs"},
        q = {":tabc<CR>", "Close current Tab"},
    },
  }, { prefix = "<leader><leader>" })
wk.register({
    -- ["<leader>a"] = { name = "test" },
    ["gd"] =  { vim.lsp.buf.definition, "Lsp Definition" },   
    ["<leader>rh"] =  { "<cmd>noh<CR>", "Remove highlights" },
    ["<leader><leader>oi"] =  { "<Cmd>lua require'jdtls'.organize_imports()<CR>", "Organize Imports" },
    ["<leader><leader>tm"] =  { "<Cmd>lua require'jdtls'.test_nearest_method()<CR>", "Test Method" },
    ["<leader><leader>tc"] =  { "<Cmd>lua require'jdtls'.test_class()<CR>", "Test Class" },
    ["<leader><leader>ev"] =  { "<Cmd>lua require('jdtls').extract_variable()<CR>", "Extract variable" },
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
vim.keymap.set("n", "<up>", "<C-w>k", {})
vim.keymap.set("n", "<down>", "<C-w>j", {})
vim.keymap.set("n", "<left>", "<C-w>h", {})
vim.keymap.set("n", "<right>", "<C-w>l", {})
vim.keymap.set("n", "<C-p>", ":Neotree filesystem toggle<CR>", {})
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})
vim.keymap.set("i", "<C-h>", "<left>", {})
vim.keymap.set("i", "<C-l>", "<right>", {})

-- Save file
vim.keymap.set('n', '<C-s>', ":w<CR>", {})
vim.keymap.set('i', '<C-s>', "<ESC>:w<CR>", {})
vim.keymap.set('n', '<leader><C-s>', ":saveas %:h\\", {})

-- Refactoring
vim.keymap.set("v", '<C-o>', ":sort<CR>", {}) 
vim.keymap.set("n", "<A-j>", ":move +1<CR>", {})
vim.keymap.set("n", "<A-k>", ":move -2<CR>", {})
vim.keymap.set("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>", {})

-- Code Hilfe 
vim.keymap.set("i", "\"", "\"\"<left>", {})
vim.keymap.set("i", "(", "()<left>", {})
vim.keymap.set("n", "<CR>", "o<ESC>", {})

-- Macro gedöns 
vim.keymap.set("n", "Q", "@qj", {})
vim.keymap.set("x", "Q", ":norm @q<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>zz", ":ZenMode<CR>", {})


-- Wünsche:
-- formatter für typescript

