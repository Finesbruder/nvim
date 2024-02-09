-- set autocmds to make my life way easier
vim.api.nvim_create_augroup('always', {clear = true})

vim.api.nvim_create_autocmd('TextYankPost', {
    group    = 'always',
    pattern  = '*',
    callback = function()
        vim.highlight.on_yank{higroup='Visual', timeout=650}
    end 
})

-- automatically mark Props and jsx in tsx files
vim.api.nvim_create_augroup('marker', {clear = true})
local flags = 'wn' -- \n.*<
markings = function() 
    vim.fn.setpos("'r", {0, (vim.fn.search("return (\\n*\\s*<", flags)), 0})
    vim.fn.setpos("'p", {0, (vim.fn.search("^.*interface .*Props {\\n", flags)), 0})
end 

vim.api.nvim_create_autocmd('BufRead', {
    group    = 'marker',
    pattern  = '*.tsx*',
    callback = markings,
    desc = 'Markiert alle Props und Returns in .ts(x) files'
})

vim.api.nvim_create_autocmd('BufWritePost', {
    group    = 'marker',
    pattern  = '*.tsx*',
    callback = markings,
    desc = 'Markiert alle Props und Returns in .ts(x) files'
})