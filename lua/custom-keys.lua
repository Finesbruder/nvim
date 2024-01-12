vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigation
vim.keymap.set("n", "<S-tab>", ":bprev<CR>", {})
vim.keymap.set("n", "<tab>", ":bnext<CR>", {})
vim.keymap.set("n", "<leader>g", ":Neotree focus git_status<CR>", {})
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

-- window options
vim.keymap.set("n", "<S-up>", ":resize +1<CR>", {})
vim.keymap.set("n", "<S-down>", ":resize -1<CR>", {})
vim.keymap.set("n", "<S-left>", ":vertical resize +1<CR>", {})
vim.keymap.set("n", "<S-right>", ":vertical resize -1<CR>", {})

-- Code insights
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<C-j>", vim.lsp.buf.hover, {})

-- Code Actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
