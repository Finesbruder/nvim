return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true, --ensure_installed =  { "lua" }, --,{ "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "typescript", "javascript", "java", "python", "css" },
			highlight = { enable = true },
			indent = { enable = true },
			tree_setter = { -- enables tree-setter for automatic = and ;
				enable = true,
			},
		})
		local tsInstall = require("nvim-treesitter.install")
		tsInstall.compilers = { "clang" }
		tsInstall.prefer_git = false
	end,
}
