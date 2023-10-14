local M = {}
local config = require("yami.config")

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

function M.setup(opts)
	for k, v in pairs(opts.highlights or {}) do
		if v ~= false then
			config.highlights[k] = v
		end
	end
end

return M
