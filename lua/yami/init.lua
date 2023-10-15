local M = {}

function M.colorscheme()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "tokyodark"
	require("yami.highlights").setup()
end

function M.load()
	vim.api.nvim_command("colorscheme yami")
end

M.setup = require("yami.config").setup

return M
