local config = {}

local default_config = {
	-- Main options --
	-- style = "dark", -- choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
	transparent = false, -- don't set background
	term_colors = true, -- if true enable the terminal
	ending_tildes = false, -- show the end-of-buffer tildes
	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
	-- Changing Formats --
	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},
	highlights = {
		diff_add = false,
		diff_delete = false,
		diff_change = false,
		diff_text = false,
		black = false,
		bg0 = false,
		bg1 = false,
		bg2 = false,
		bg3 = false,
		bg_d = false,
		bg_blue = false,
		bg_yellow = false,
		fg = false,
		purple = false,
		green = false,
		orange = false,
		blue = false,
		yellow = false,
		cyan = false,
		red = false,
		grey = false,
		light_grey = false,
		dark_cyan = false,
		dark_red = false,
		dark_yellow = false,
		dark_purple = false,
	},
}

function config.setup(opts)
	for k, v in pairs(opts or {}) do
		if type(v) == "table" then
			config[k] = {}
			for kk, vv in pairs(v) do
				config[k][kk] = vv
			end
		else
			config[k] = v
		end
	end
end

return setmetatable(config, { __index = default_config })
