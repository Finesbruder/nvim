-- settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set colorcolumn=80")
-- vim.cmd("Neotree filesystem show left")
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showcmd = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true
vim.opt.showtabline = 2
vim.opt.cmdheight = 2

vim.diagnostic.config({
    virtual_text = false,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
})

