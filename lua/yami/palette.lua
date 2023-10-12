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

local cyberpunk = {
	black = "#1b0e1f",
	bg0 = "#231022",
	bg1 = "#2a0e27",
	bg2 = "#2f0f2d",
	bg3 = "#320f30",
	bg_d = "#1d0c1e",
	bg_blue = "#4087cf",
	bg_yellow = "#ffb449",
	fg = "#8fa5bf",
	purple = "#bf63ff",
	green = "#00ff6b",
	orange = "#ffa94d",
	blue = "#38a3ff",
	yellow = "#ffcc4b",
	cyan = "#5ac7f2",
	red = "#ff5463",
	grey = "#787e8c",
	light_grey = "#a5abba",
	dark_cyan = "#28a4bb",
	dark_red = "#d95454",
	dark_yellow = "#d9814f",
	dark_purple = "#bf6cc4",
	diff_add = "#1f2921",
	diff_delete = "#291e1f",
	diff_change = "#1b2d43",
	diff_text = "#2b4773",
}
local matrix = {
	diff_add = "#303d27",
	diff_delete = "#3c2729",
	diff_change = "#18344c",
	diff_text = "#265478",
  black = "#151820",
  bg0 = "#242b38",
  bg1 = "#2d3343",
  bg2 = "#343e4f",
  bg3 = "#363c51",
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

return matrix
-- dark = {
-- 	black = "#181a1f",
-- 	bg0 = "#282c34",
-- 	bg1 = "#31353f",
-- 	bg2 = "#393f4a",
-- 	bg3 = "#3b3f4c",
-- 	bg_d = "#21252b",
-- 	bg_blue = "#73b8f1",
-- 	bg_yellow = "#ebd09c",
-- 	fg = "#abb2bf",
-- 	purple = "#c678dd",
-- 	green = "#98c379",
-- 	orange = "#d19a66",
-- 	blue = "#61afef",
-- 	yellow = "#e5c07b",
-- 	cyan = "#56b6c2",
-- 	red = "#e86671",
-- 	grey = "#5c6370",
-- 	light_grey = "#848b98",
-- 	dark_cyan = "#2b6f77",
-- 	dark_red = "#993939",
-- 	dark_yellow = "#93691d",
-- 	dark_purple = "#8a3fa0",
-- 	diff_add = "#31392b",
-- 	diff_delete = "#382b2c",
-- 	diff_change = "#1c3448",
-- 	diff_text = "#2c5372",
-- },
-- darker = {
-- 	black = "#0e1013",
-- 	bg0 = "#1f2329",
-- 	bg1 = "#282c34",
-- 	bg2 = "#30363f",
-- 	bg3 = "#323641",
-- 	bg_d = "#181b20",
-- 	bg_blue = "#61afef",
-- 	bg_yellow = "#e8c88c",
-- 	fg = "#a0a8b7",
-- 	purple = "#bf68d9",
-- 	green = "#8ebd6b",
-- 	orange = "#cc9057",
-- 	blue = "#4fa6ed",
-- 	yellow = "#e2b86b",
-- 	cyan = "#48b0bd",
-- 	red = "#e55561",
-- 	grey = "#535965",
-- 	light_grey = "#7a818e",
-- 	dark_cyan = "#266269",
-- 	dark_red = "#8b3434",
-- 	dark_yellow = "#835d1a",
-- 	dark_purple = "#7e3992",
-- 	diff_add = "#272e23",
-- 	diff_delete = "#2d2223",
-- 	diff_change = "#172a3a",
-- 	diff_text = "#274964",
-- },
-- cool = {
-- 	black = "#151820",
-- 	bg0 = "#242b38",
-- 	bg1 = "#2d3343",
-- 	bg2 = "#343e4f",
-- 	bg3 = "#363c51",
-- 	bg_d = "#1e242e",
-- 	bg_blue = "#6db9f7",
-- 	bg_yellow = "#f0d197",
-- 	fg = "#a5b0c5",
-- 	purple = "#ca72e4",
-- 	green = "#97ca72",
-- 	orange = "#d99a5e",
-- 	blue = "#5ab0f6",
-- 	yellow = "#ebc275",
-- 	cyan = "#4dbdcb",
-- 	red = "#ef5f6b",
-- 	grey = "#546178",
-- 	light_grey = "#7d899f",
-- 	dark_cyan = "#25747d",
-- 	dark_red = "#a13131",
-- 	dark_yellow = "#9a6b16",
-- 	dark_purple = "#8f36a9",
-- 	diff_add = "#303d27",
-- 	diff_delete = "#3c2729",
-- 	diff_change = "#18344c",
-- 	diff_text = "#265478",
-- },
-- deep = {
-- 	black = "#0c0e15",
-- 	bg0 = "#1a212e",
-- 	bg1 = "#21283b",
-- 	bg2 = "#283347",
-- 	bg3 = "#2a324a",
-- 	bg_d = "#141b24",
-- 	bg_blue = "#54b0fd",
-- 	bg_yellow = "#f2cc81",
-- 	fg = "#93a4c3",
-- 	purple = "#c75ae8",
-- 	green = "#8bcd5b",
-- 	orange = "#dd9046",
-- 	blue = "#41a7fc",
-- 	yellow = "#efbd5d",
-- 	cyan = "#34bfd0",
-- 	red = "#f65866",
-- 	grey = "#455574",
-- 	light_grey = "#6c7d9c",
-- 	dark_cyan = "#1b6a73",
-- 	dark_red = "#992525",
-- 	dark_yellow = "#8f610d",
-- 	dark_purple = "#862aa1",
-- 	diff_add = "#27341c",
-- 	diff_delete = "#331c1e",
-- 	diff_change = "#102b40",
-- 	diff_text = "#1c4a6e",
-- },
-- warm = {
-- 	black = "#191a1c",
-- 	bg0 = "#2c2d30",
-- 	bg1 = "#35373b",
-- 	bg2 = "#3e4045",
-- 	bg3 = "#404247",
-- 	bg_d = "#242628",
-- 	bg_blue = "#79b7eb",
-- 	bg_yellow = "#e6cfa1",
-- 	fg = "#b1b4b9",
-- 	purple = "#c27fd7",
-- 	green = "#99bc80",
-- 	orange = "#c99a6e",
-- 	blue = "#68aee8",
-- 	yellow = "#dfbe81",
-- 	cyan = "#5fafb9",
-- 	red = "#e16d77",
-- 	grey = "#646568",
-- 	light_grey = "#8b8d91",
-- 	dark_cyan = "#316a71",
-- 	dark_red = "#914141",
-- 	dark_yellow = "#8c6724",
-- 	dark_purple = "#854897",
-- 	diff_add = "#32352f",
-- 	diff_delete = "#342f2f",
-- 	diff_change = "#203444",
-- 	diff_text = "#32526c",
-- },
-- warmer = {
-- 	black = "#101012",
-- 	bg0 = "#232326",
-- 	bg1 = "#2c2d31",
-- 	bg2 = "#35363b",
-- 	bg3 = "#37383d",
-- 	bg_d = "#1b1c1e",
-- 	bg_blue = "#68aee8",
-- 	bg_yellow = "#e2c792",
-- 	fg = "#a7aab0",
-- 	purple = "#bb70d2",
-- 	green = "#8fb573",
-- 	orange = "#c49060",
-- 	blue = "#57a5e5",
-- 	yellow = "#dbb671",
-- 	cyan = "#51a8b3",
-- 	red = "#de5d68",
-- 	grey = "#5a5b5e",
-- 	light_grey = "#818387",
-- 	dark_cyan = "#2b5d63",
-- 	dark_red = "#833b3b",
-- 	dark_yellow = "#7c5c20",
-- 	dark_purple = "#79428a",
-- 	diff_add = "#282b26",
-- 	diff_delete = "#2a2626",
-- 	diff_change = "#1a2a37",
-- 	diff_text = "#2c485f",
-- },
-- light = {
-- 	black = "#101012",
-- 	bg0 = "#fafafa",
-- 	bg1 = "#f0f0f0",
-- 	bg2 = "#e6e6e6",
-- 	bg3 = "#dcdcdc",
-- 	bg_d = "#c9c9c9",
-- 	bg_blue = "#68aee8",
-- 	bg_yellow = "#e2c792",
-- 	fg = "#383a42",
-- 	purple = "#a626a4",
-- 	green = "#50a14f",
-- 	orange = "#c18401",
-- 	blue = "#4078f2",
-- 	yellow = "#986801",
-- 	cyan = "#0184bc",
-- 	red = "#e45649",
-- 	grey = "#a0a1a7",
-- 	light_grey = "#818387",
-- 	dark_cyan = "#2b5d63",
-- 	dark_red = "#833b3b",
-- 	dark_yellow = "#7c5c20",
-- 	dark_purple = "#79428a",
-- 	diff_add = "#e2fbe4",
-- 	diff_delete = "#fce2e5",
-- 	diff_change = "#e2ecfb",
-- 	diff_text = "#cad3e0",
-- },
--
-- black = "#0e1013",
-- 		bg0 = "#1f2329",
-- 		bg1 = "#282c34",
-- 		bg2 = "#30363f",
-- 		bg3 = "#323641",
-- 		bg_d = "#181b20",
-- 		bg_blue = "#61afef",
-- 		bg_yellow = "#e8c88c",
-- 		fg = "#a0a8b7",
-- 		purple = "#bf68d9",
-- 		green = "#8ebd6b",
-- 		orange = "#cc9057",
-- 		blue = "#4fa6ed",
-- 		yellow = "#e2b86b",
-- 		cyan = "#48b0bd",
-- 		red = "#e55561",
-- 		grey = "#535965",
-- 		light_grey = "#7a818e",
-- 		dark_cyan = "#266269",
-- 		dark_red = "#8b3434",
-- 		dark_yellow = "#835d1a",
-- 		dark_purple = "#7e3992",
-- 		diff_add = "#272e23",
-- 		diff_delete = "#2d2223",
-- 		diff_change = "#172a3a",
-- 		diff_text = "#274964",
