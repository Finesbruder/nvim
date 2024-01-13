local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
local opts =  {}

require("custom-settings")
require("lazy").setup("plugins")
require("custom-keys")
-- Wünsche:
-- gd in new tab bzw window
-- formatter soll auch richtig formatieren
-- auf leader ch soll sich custom-keys öffnen 
-- Navigation durch File, durch alle Tab-Buffer und durch Windows 
