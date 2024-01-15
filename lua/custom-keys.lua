-- vim.keymap.set("v", "<S-tab>", "<ESC>:call setreg('+', expand('%:h') .. '\\')<CR>", {}) 
vim.keymap.set("v", ':', "", {}) -- unbind : in v-mode
-- Mode Jumping
vim.keymap.set("i", "jk", "<ESC>", {})
vim.keymap.set("i", "kj", "<ESC>", {})

-- Navigation
vim.keymap.set("n", "<tab>", ":bnext<CR>", {})
vim.keymap.set("n", "<S-tab>", ":bprev<CR>", {})
vim.keymap.set("n", "<C-k>", "<C-w>w", {})
vim.keymap.set("n", "<C-j>", "<C-w>W", {})
vim.keymap.set("n", "<leader>g", ":Neotree reveal git_status<CR>", {})
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

    -- center cursor 
    vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
    vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

-- Window Options
vim.keymap.set("n", "<S-up>", ":resize +1<CR>", {})
vim.keymap.set("n", "<S-down>", ":resize -1<CR>", {})
vim.keymap.set("n", "<S-left>", ":vertical resize +1<CR>", {})
vim.keymap.set("n", "<S-right>", ":vertical resize -1<CR>", {})
vim.keymap.set("n", "<leader>d", ":bp<bar>sp<bar>bn<bar>bd<CR>", {});

-- Code Insights
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- vim.keymap.set("n", "<leader>gd", "gd | :tabnew %<CR>", {}) funktioniert noch nicht ganz: öffnet nicht die definition
-- vim.keymap.set("n", "<C-j>", vim.lsp.buf.hover, {})
-- vim.keymap.set("i", "<C-j>", vim.lsp.buf.hover, {})

-- LSP Bindings
vim.keymap.set("n", "<leader>ra", vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
vim.keymap.set("n", '<leader>rn', vim.lsp.buf.rename, {}) -- Brauche noch global rename
vim.keymap.set("n", '<leader>rr', vim.lsp.buf.references, {})
vim.keymap.set("n", '<leader>rws', vim.lsp.buf.workspace_symbol, {}) -- ich weiß nicht was das macht lol
vim.keymap.set("i", '<C-h>', vim.lsp.buf.signature_help, {}) -- ich weiß nicht was das macht lol

-- Save file
vim.keymap.set('n', '<C-s>', ":w<CR>", {})
vim.keymap.set('i', '<C-s>', "<ESC>:w<CR>i", {})
vim.keymap.set('n', '<leader><C-s>', ":saveas %:h\\", {})
vim.keymap.set('i', '<leader><C-s>', ":saveas %:h\\", {})

-- Refactoring
vim.keymap.set("v", '<C-s>', ":sort<CR>", {}) -- Brauche noch global rename
vim.keymap.set("n", "<A-down>", ":move +1<CR>", {})
vim.keymap.set("n", "<A-up>", ":move -2<CR>", {})
vim.keymap.set("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>", {})

    -- Deletes selected text, moves to new window, pastes and saves in cwd 
vim.keymap.set("v", "<tab>", "d<bar>:vsplit<CR><bar>:e %:h\\tempfile.txt<CR><bar>p<bar>:saveas %:h\\", {})

-- Code Hilfe 
    -- Brackets
vim.keymap.set("i", "'", "''<left>", {})
vim.keymap.set("i", "\"", "\"\"<left>", {})
vim.keymap.set("i", "(", "()<left>", {})
vim.keymap.set("i", "[", "[]<left>", {})
vim.keymap.set("i", "{", "{}<left><CR><up><ESC>$o", {})
vim.keymap.set("i", "{;", "{};<left><left>", {})
vim.keymap.set("i", "/*", "/**/<left><left>", {})
vim.keymap.set("n", "<CR>", "o<ESC>", {})

-- Wünsche:
-- shortcut für quickfix jumps (:cc!n)
-- gd in new tab bzw window
-- formatter soll auch richtig formatieren
-- auf leader ch soll sich custom-keys öffnen 
-- Navigation durch File, durch alle Tab-Buffer und durch Windows 

