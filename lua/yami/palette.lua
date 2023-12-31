local config = require("yami.config")

local palette = {
	black = "#1b1d20",
	bg0 = "#2b2f39",
	bg1 = "#343943",
	bg2 = "#3c424b",
	bg3 = "#3e444d",
	bg_d = "#25282c",
	bg_blue = "#6ca4f5",
	bg_yellow = "#f0d3a4",
	fg = "#A0A8CD",
	red = "#EE6D85",
	orange = "#F6955B",
	yellow = "#D7A65F",
	green = "#95C561",
	blue = "#7199EE",
	cyan = "#38A89D",
	purple = "#A485DD",
	grey = "#4A5057",
	tan = "#e3dec3",
	light_grey = "#8d94a1",
	dark_cyan = "#337f8b",
	dark_red = "#a14e4e",
	dark_yellow = "#9a7422",
	dark_purple = "#9254a3",
	diff_add = "#2b3228",
	diff_delete = "#332b2b",
	diff_change = "#1f3144",
	diff_text = "#2a537d",
}

local palette_v2 = {
	black = "#212429",
	-- bg0 = "#25282e",  -- Darker
	bg0 = "#2e3239", -- Ligher
	bg1 = "#3F444C",
	bg2 = "#515760",
	bg3 = "#646A74",
	bg_d = "#25282e",
	bg_blue = "#61afef",
	fg = "#bebeb9",
	purple = "#bc74de",
	green = "#95C561",
	orange = "#e9ae5a",
	blue = "#5dbce7",
	yellow = "#ebd36a",
	cyan = "#88dbca",
	red = "#f4877c",
	grey = "#535965",
	tan = "#dfd6ba",
	light_grey = "#7a818e",
	dark_cyan = "#266269",
	dark_red = "#8b3434",
	dark_yellow = "#835d1a",
	dark_purple = "#7e3992",
	diff_add = "#272e23",
	diff_delete = "#2d2223",
	diff_change = "#172a3a",
	diff_text = "#274964",
}
local matrix = {
	diff_add = "#303d27",
	diff_delete = "#3c2729",
	diff_change = "#18344c",
	diff_text = "#265478",
	black = "#151820",
	bg0 = "#242b38",
	bg1 = "#3F444C",
	bg2 = "#515760",
	bg3 = "#646A74",
	bg_d = "#1e242e",
	bg_blue = "#6db9f7",
	bg_yellow = "#f0d197",
	fg = "#a5b0c5",
	purple = "#ca72e4",
	green = "#97ca72",
	orange = "#d99a5e",
	blue = "#5ab0f6",
	yellow = "#ebc275",
	cyan = "#4dbdcb",
	red = "#ef5f6b",
	grey = "#546178",
	light_grey = "#7d899f",
	dark_cyan = "#25747d",
	dark_red = "#a13131",
	dark_yellow = "#9a6b16",
	dark_purple = "#8f36a9",
}
local custom_palette = config.highlights

return vim.tbl_extend("force", palette_v2, custom_palette)
