local p = require("yami.palette")
local config = require('yami.config')
local terminal = require("yami.terminal")

local M = {}

local function load_highlights(highlights)
	for group_name, group_settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group_name, group_settings)
	end
end

local colors = {
    LightGrey = {fg = p.light_grey},
    Grey = {fg = p.grey},
    Red = {fg = p.red},
    Cyan = {fg = p.cyan},
    Yellow = {fg = p.yellow},
    Orange = {fg = p.orange},
    Green = {fg = p.green},
    Blue = {fg = p.blue},
    Purple = {fg = p.purple}
}

M.highlights = {
	-- COMMON HIGHLIGHTS
	Normal = { fg = p.fg, bg = config.transparent and p.none or p.bg0 },
	Terminal = { fg = p.fg, bg = config.transparent and p.none or p.bg0 },
	EndOfBuffer = { fg = config.ending_tildes and p.bg2 or p.bg0, bg = config.transparent and p.none or p.bg0 },
	FoldColumn = { fg = p.fg, bg = config.transparent and p.none or p.bg1 },
	Folded = { fg = p.fg, bg = config.transparent and p.none or p.bg1 },
	SignColumn = { fg = p.fg, bg = config.transparent and p.none or p.bg0 },
	ToolbarLine = { fg = p.fg },
	Cursor = { reverse = true },
	vCursor = { reverse = true },
	iCursor = { reverse = true },
	lCursor = { reverse = true },
	CursorIM = { reverse = true },
	CursorColumn = { bg = p.bg1 },
	CursorLine = { bg = p.bg1 },
	ColorColumn = { bg = p.bg1 },
	CursorLineNr = { fg = p.fg },
	LineNr = { fg = p.grey },
	Conceal = { fg = p.grey, bg = p.bg1 },
	DiffAdd = { fg = p.none, bg = p.diff_add },
	DiffChange = { fg = p.none, bg = p.diff_change },
	DiffDelete = { fg = p.none, bg = p.diff_delete },
	DiffText = { fg = p.none, bg = p.diff_text },
	DiffAdded = colors.Green,
	DiffRemoved = colors.Red,
	DiffFile = colors.Cyan,
	DiffIndexLine = colors.Grey,
	Directory = { fg = p.blue },
	ErrorMsg = { fg = p.red, bold = true },
	WarningMsg = { fg = p.yellow, bold = true },
	MoreMsg = { fg = p.blue, bold = true },
	CurSearch = { fg = p.bg0, bg = p.orange },
	IncSearch = { fg = p.bg0, bg = p.orange },
	Search = { fg = p.bg0, bg = p.bg_yellow },
	Substitute = { fg = p.bg0, bg = p.green },
	MatchParen = { fg = p.none, bg = p.grey },
	NonText = { fg = p.grey },
	Whitespace = { fg = p.grey },
	SpecialKey = { fg = p.grey },
	Pmenu = { fg = p.fg, bg = p.bg1 },
	PmenuSbar = { fg = p.none, bg = p.bg1 },
	PmenuSel = { fg = p.bg0, bg = p.bg_blue },
	WildMenu = { fg = p.bg0, bg = p.blue },
	PmenuThumb = { fg = p.none, bg = p.grey },
	Question = { fg = p.yellow },
	SpellBad = { fg = p.none, undercurl = true, sp = p.red },
	SpellCap = { fg = p.none, undercurl = true, sp = p.yellow },
	SpellLocal = { fg = p.none, undercurl = true, sp = p.blue },
	SpellRare = { fg = p.none, undercurl = true, sp = p.purple },
	StatusLine = { fg = p.fg, bg = p.bg2 },
	StatusLineTerm = { fg = p.fg, bg = p.bg2 },
	StatusLineNC = { fg = p.grey, bg = p.bg1 },
	StatusLineTermNC = { fg = p.grey, bg = p.bg1 },
	TabLine = { fg = p.fg, bg = p.bg1 },
	TabLineFill = { fg = p.grey, bg = p.bg1 },
	TabLineSel = { fg = p.bg0, bg = p.fg },
	VertSplit = { fg = p.bg3 },
	Visual = { bg = p.bg3 },
	VisualNOS = { fg = p.none, bg = p.bg2, underline = true },
	QuickFixLine = { fg = p.blue, underline = true },
	Debug = { fg = p.yellow },
	debugPC = { fg = p.bg0, bg = p.green },
	debugBreakpoint = { fg = p.bg0, bg = p.red },
	ToolbarButton = { fg = p.bg0, bg = p.bg_blue },
	FloatBorder = { fg = p.grey, bg = p.bg1 },
	NormalFloat = { fg = p.fg, bg = p.bg1 },

	-- COMMON HIGHLIGHTS
	String = { fg = p.green, },
	Character = colors.Orange,
	Number = colors.Orange,
	Float = colors.Orange,
	Boolean = colors.Orange,
	Type = colors.Yellow,
	Structure = colors.Yellow,
	StorageClass = colors.Yellow,
	Identifier = { fg = p.red, },
	Constant = colors.Cyan,
	PreProc = colors.Purple,
	PreCondit = colors.Purple,
	Include = colors.Purple,
	Keyword = { fg = p.purple,  },
	Define = colors.Purple,
	Typedef = colors.Purple,
	Exception = colors.Purple,
	Conditional = { fg = p.purple,  },
	Repeat = { fg = p.purple,  },
	Statement = colors.Purple,
	Macro = colors.Red,
	Error = colors.Purple,
	Label = colors.Purple,
	Special = colors.Red,
	SpecialChar = colors.Red,
	Function = { fg = p.blue, },
	Operator = colors.Purple,
	Title = colors.Cyan,
	Tag = colors.Green,
	Delimiter = colors.LightGrey,
	Comment = { fg = p.grey,  },
	SpecialComment = { fg = p.grey,  },
	Todo = { fg = p.red,  },

	-- TreeSitter
	["@annotation"] = { fg = p.fg },
	["@attribute"] = colors.Cyan,
	["@attribute.typescript"] = colors.Blue,
	["@boolean"] = colors.Orange,
	["@character"] = colors.Orange,
	["@comment"] = { fg = p.grey,  },
	["@conditional"] = { fg = p.purple },
	["@constant"] = { fg = p.orange },
	["@constant.builtin"] = { fg = p.orange },
	["@constant.macro"] = { fg = p.orange },
	["@constructor"] = { fg = p.yellow, bold = true },
	["@error"] = { fg = p.fg },
	["@exception"] = colors.Purple,
	["@field"] = colors.Cyan,
	["@float"] = colors.Orange,
	["@function"] = { fg = p.blue },
	["@function.builtin"] = { fg = p.cyan },
	["@function.macro"] = { fg = p.cyan },
	["@include"] = colors.Purple,
	["@keyword"] = { fg = p.purple,  },
	["@keyword.function"] = { fg = p.purple },
	["@keyword.operator"] = { fg = p.purple,  },
	["@label"] = colors.Red,
	["@method"] = { fg = p.blue },
	["@namespace"] = colors.Yellow,
	["@none"] = { fg = p.fg },
	["@number"] = colors.Orange,
	["@operator"] = { fg = p.fg },
	["@parameter"] = colors.Red,
	["@parameter.reference"] = { fg = p.fg },
	["@preproc"] = colors.Purple,
	["@property"] = colors.Cyan,
	["@punctuation.delimiter"] = colors.LightGrey,
	["@punctuation.bracket"] = colors.LightGrey,
	["@punctuation.special"] = colors.Red,
	["@repeat"] = { fg = p.purple,  },
	["@string"] = { fg = p.green, },
	["@string.regex"] = { fg = p.orange, },
	["@string.escape"] = { fg = p.red, },
	["@symbol"] = colors.Cyan,
	["@tag"] = colors.Purple,
	["@tag.attribute"] = colors.Yellow,
	["@tag.delimiter"] = colors.Purple,
	["@text"] = { fg = p.fg },
	["@text.strong"] = { fg = p.fg, bold = true },
	["@text.emphasis"] = { fg = p.fg, italic = true },
	["@text.underline"] = { fg = p.fg, underline = true },
	["@text.strike"] = { fg = p.fg, strikethrough = true },
	["@text.title"] = { fg = p.orange, bold = true },
	["@text.literal"] = colors.Green,
	["@text.uri"] = { fg = p.cyan, underline = true },
	["@text.todo"] = { fg = p.red,  },
	["@text.math"] = { fg = p.fg },
	["@text.reference"] = colors.Blue,
	["@text.environment"] = { fg = p.fg },
	["@text.environment.name"] = { fg = p.fg },
	["@text.diff.add"] = colors.Green,
	["@text.diff.delete"] = colors.Red,
	["@note"] = { fg = p.fg },
	["@warning"] = { fg = p.fg },
	["@danger"] = { fg = p.fg },
	["@type"] = colors.Yellow,
	["@type.builtin"] = colors.Orange,
	["@variable"] = { fg = p.fg },
	["@variable.builtin"] = { fg = p.red },

	-- LSP
	LspCxxHlGroupEnumConstant = { fg = p.orange },
	LspCxxHlGroupMemberVariable = { fg = p.orange },
	LspCxxHlGroupNamespace = { fg = p.blue },
	LspCxxHlSkippedRegion = { fg = p.grey },
	LspCxxHlSkippedRegionBeginEnd = { fg = p.red },
	LspDiagnosticsDefaultError = { fg = p.red },
	LspDiagnosticsDefaultHint = { fg = p.purple },
	LspDiagnosticsDefaultInformation = { fg = p.blue },
	LspDiagnosticsDefaultWarning = { fg = p.yellow },
	LspDiagnosticsUnderlineError = { underline = true, sp = p.red },
	LspDiagnosticsUnderlineHint = {
		underline = true,
		sp = p.purple,
	},
	LspDiagnosticsUnderlineInformation = {
		underline = true,
		sp = p.blue,
	},
	LspDiagnosticsUnderlineWarning = {
		underline = true,
		sp = p.yellow,
	},
	DiagnosticSignError = { fg = p.red },
	DiagnosticSignHint = { fg = p.purple },
	DiagnosticSignInfo = { fg = p.blue },
	DiagnosticSignWarn = { fg = p.yellow },
	LspReferenceRead = { bg = p.bg3 },
	LspReferenceWrite = { bg = p.bg3 },
	LspReferenceText = { bg = p.bg3 },
	LspInfoBorder = { fg = p.bg4 },

	-- lsp semantic tokens
	LspNamespace = { link = "@namespace" },
	LspType = { link = "@type" },
	LspClass = { link = "@type" },
	LspEnum = { link = "@constant" },
	LspInterface = { link = "@constant" },
	LspStruct = { link = "@constant" },
	LspTypeParameter = { link = "@type" },
	LspParameter = { link = "@parameter" },
	LspVariable = { link = "@variable" },
	LspProperty = { link = "@property" },
	LspEnumMember = { link = "@constant" },
	LspEvent = { link = "@constant" },
	LspFunction = { link = "@function" },
	LspMethod = { link = "@method" },
	LspMacro = { link = "@constant.macro" },
	LspKeyword = { link = "@keyword" },
	LspModifier = { link = "TSModifier" },
	LspComment = { link = "@comment" },
	LspString = { link = "@string" },
	LspNumber = { link = "@number" },
	LspRegexp = { link = "@string.regex" },
	LspOperator = { link = "@operator" },
	LspDecorator = { link = "@symbol" },
	LspDeprecated = { link = "@text.strike" },

	-- [[[[[[[[[[[[[[[[[[[[[[
	--     PLUGIN SPECIFIC
	-- ]]]]]]]]]]]]]]]]]]]]]

	-- BARBAR
	BufferCurrent = { bold = true },
	BufferCurrentMod = { fg = p.orange, bold = true, italic = true },
	BufferCurrentSign = { fg = p.purple },
	BufferInactiveMod = { fg = p.light_grey, bg = p.bg1, italic = true },
	BufferVisible = { fg = p.light_grey, bg = p.bg0 },
	BufferVisibleMod = { fg = p.yellow, bg = p.bg0, italic = true },
	BufferVisibleIndex = { fg = p.light_grey, bg = p.bg0 },
	BufferVisibleSign = { fg = p.light_grey, bg = p.bg0 },
	BufferVisibleTarget = { fg = p.light_grey, bg = p.bg0 },

	-- CMP
	CmpItemAbbr = { fg = p.fg },
	CmpItemAbbrDeprecated = { fg = p.light_grey, strikethrough = true },
	CmpItemAbbrMatch = colors.Cyan,
	CmpItemAbbrMatchFuzzy = { fg = p.cyan, underline = true },
	CmpItemMenu = colors.LightGrey,
	CmpItemKind = { fg = p.purple, config.cmp_itemkind_reverse, reverse = true },

	-- WHICHKEY
	WhichKey = colors.Red,
	WhichKeyDesc = colors.Blue,
	WhichKeyGroup = colors.Orange,
	WhichKeySeparator = colors.Green,

	-- GITGUTTER
	GitGutterAdd = { fg = p.green },
	GitGutterChange = { fg = p.blue },
	GitGutterDelete = { fg = p.red },

	-- HOP
	HopNextKey = { fg = p.red, bold = true },
	HopNextKey1 = { fg = p.cyan, bold = true },
	HopNextKey2 = { fg = p.green, bold = true },
	HopUnmatched = colors.Grey,

	-- DIFFVIEW
	DiffviewFilePanelTitle = { fg = p.blue, bold = true },
	DiffviewFilePanelCounter = { fg = p.purple, bold = true },
	DiffviewFilePanelFileName = { fg = p.fg },
	DiffviewNormal = { link = "Normal" },
	DiffviewCursorLine = { link = "CursorLine" },
	DiffviewVertSplit = { link = "VertSplit" },
	DiffviewSignColumn = { link = "SignColumn" },
	DiffviewStatusLine = { link = "StatusLine" },
	DiffviewStatusLineNC = { link = "StatusLineNC" },
	DiffviewEndOfBuffer = { link = "EndOfBuffer" },
	DiffviewFilePanelRootPath = colors.Grey,
	DiffviewFilePanelPath = colors.Grey,
	DiffviewFilePanelInsertions = colors.Green,
	DiffviewFilePanelDeletions = colors.Red,
	DiffviewStatusAdded = colors.Green,
	DiffviewStatusUntracked = colors.Blue,
	DiffviewStatusModified = colors.Blue,
	DiffviewStatusRenamed = colors.Blue,
	DiffviewStatusCopied = colors.Blue,
	DiffviewStatusTypeChange = colors.Blue,
	DiffviewStatusUnmerged = colors.Blue,
	DiffviewStatusUnknown = colors.Red,
	DiffviewStatusDeleted = colors.Red,
	DiffviewStatusBroken = colors.Red,

	-- GITSIGNS
	GitSignsAdd = colors.Green,
	GitSignsAddLn = colors.Green,
	GitSignsAddNr = colors.Green,
	GitSignsChange = colors.Blue,
	GitSignsChangeLn = colors.Blue,
	GitSignsChangeNr = colors.Blue,
	GitSignsDelete = colors.Red,
	GitSignsDeleteLn = colors.Red,
	GitSignsDeleteNr = colors.Red,

	-- NEOTREE
	NeoTreeNormal = { fg = p.fg, bg = config.transparent and p.none or p.bg_d },
	NeoTreeNormalNC = { fg = p.fg, bg = config.transparent and p.none or p.bg_d },
	NeoTreeVertSplit = { fg = p.bg1, bg = config.transparent and p.none or p.bg1 },
	NeoTreeWinSeparator = { fg = p.bg1, bg = config.transparent and p.none or p.bg1 },
	NeoTreeEndOfBuffer = { fg = config.ending_tildes and p.bg2 or p.bg_d, bg = config.transparent and p.none or p.bg_d },
	NeoTreeRootName = { fg = p.orange, bold = true },
	NeoTreeGitAdded = colors.Green,
	NeoTreeGitDeleted = colors.Red,
	NeoTreeGitModified = colors.Yellow,
	NeoTreeGitConflict = { fg = p.red, bold = true, italic = true },
	NeoTreeGitUntracked = { fg = p.red, italic = true },
	NeoTreeIndentMarker = colors.Grey,
	NeoTreeSymbolicLinkTarget = colors.Purple,

	-- NEOTEST
	NeotestAdapterName = { fg = p.purple, bold = true },
	NeotestDir = colors.Cyan,
	NeotestExpandMarker = colors.Grey,
	NeotestFailed = colors.Red,
	NeotestFile = colors.Cyan,
	NeotestFocused = { bold = true, italic = true },
	NeotestIndent = colors.Grey,
	NeotestMarked = { fg = p.orange, bold = true },
	NeotestNamespace = colors.Blue,
	NeotestPassed = colors.Green,
	NeotestRunning = colors.Yellow,
	NeotestWinSelect = { fg = p.cyan, bold = true },
	NeotestSkipped = colors.LightGrey,
	NeotestTarget = colors.Purple,
	NeotestTest = { fg = p.fg },
	NeotestUnknown = colors.LightGrey,

	-- NVIM-TREE
	NvimTreeNormal = { fg = p.fg, bg = config.transparent and p.none or p.bg_d },
	NvimTreeVertSplit = { fg = p.bg_d, bg = config.transparent and p.none or p.bg_d },
	NvimTreeEndOfBuffer = { fg = config.ending_tildes and p.bg2 or p.bg_d, bg = config.transparent and p.none or p.bg_d },
	NvimTreeRootFolder = { fg = p.orange, bold = true },
	NvimTreeGitDirty = colors.Yellow,
	NvimTreeGitNew = colors.Green,
	NvimTreeGitDeleted = colors.Red,
	NvimTreeSpecialFile = { fg = p.yellow, underline = true },
	NvimTreeIndentMarker = { fg = p.fg },
	NvimTreeImageFile = { fg = p.dark_purple },
	NvimTreeSymlink = colors.Purple,
	NvimTreeFolderName = colors.Blue,

	-- TELESCOPE
	TelescopeBorder = colors.Red,
	TelescopePromptBorder = colors.Cyan,
	TelescopeResultsBorder = colors.Cyan,
	TelescopePreviewBorder = colors.Cyan,
	TelescopeMatching = { fg = p.orange, bold = true },
	TelescopePromptPrefix = colors.Green,
	TelescopeSelection = { bg = p.bg2 },
	TelescopeSelectionCaret = colors.Yellow,

	-- DASHBOARD
	DashboardShortCut = colors.Blue,
	DashboardHeader = colors.Yellow,
	DashboardCenter = colors.Cyan,
	DashboardFooter = { fg = p.dark_red, italic = true },

	-- OUTLINE
	FocusedSymbol = { fg = p.purple, bg = p.bg2, bold = true },
	AerialLine = { fg = p.purple, bg = p.bg2, bold = true },

	-- NAVIC
	NavicText = { fg = p.fg },
	NavicSeparator = { fg = p.light_grey },

	-- TS RAINBOW
	rainbowcol1 = colors.LightGrey,
	rainbowcol2 = colors.Yellow,
	rainbowcol3 = colors.Blue,
	rainbowcol4 = colors.Orange,
	rainbowcol5 = colors.Purple,
	rainbowcol6 = colors.Green,
	rainbowcol7 = colors.Red,

	TSRainbowRed = colors.Red,
	TSRainbowYellow = colors.Yellow,
	TSRainbowBlue = colors.Blue,
	TSRainbowOrange = colors.Orange,
	TSRainbowGreen = colors.Green,
	TSRainbowViolet = colors.Purple,
	TSRainbowCyan = colors.Cyan,

	RainbowDelimiterRed = colors.Red,
	RainbowDelimiterYellow = colors.Yellow,
	RainbowDelimiterBlue = colors.Blue,
	RainbowDelimiterOrange = colors.Orange,
	RainbowDelimiterGreen = colors.Green,
	RainbowDelimiterViolet = colors.Purple,
	RainbowDelimiterCyan = colors.Cyan,

	-- INDENT BLANKLINE
	IndentBlanklineIndent1 = colors.Blue,
	IndentBlanklineIndent2 = colors.Green,
	IndentBlanklineIndent3 = colors.Cyan,
	IndentBlanklineIndent4 = colors.LightGrey,
	IndentBlanklineIndent5 = colors.Purple,
	IndentBlanklineIndent6 = colors.Red,
	IndentBlanklineChar = { fg = p.bg1, nocombine = true },
	IndentBlanklineContextChar = { fg = p.grey, nocombine = true },
	IndentBlanklineContextStart = { sp = p.grey, underline = true },
	IndentBlanklineContextSpaceChar = { nocombine = true },

	-- Ibl v3
	IblIndent = { fg = p.bg1, nocombine = true },
	IblWhitespace = { nocombine = true },
	IblScope = { nocombine = true },

	-- MINI
	MiniCompletionActiveParameter = { underline = true },
	MiniCursorword = { underline = true },
	MiniCursorwordCurrent = { underline = true },
	MiniIndentscopeSymbol = { fg = p.grey },
	MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible
	MiniJump = { fg = p.purple, underline = true, sp = p.purple },
	MiniJump2dSpot = { fg = p.red, bold = true, nocombine = true},
	MiniStarterCurrent = { nocombine = true },
	MiniStarterFooter = { fg = p.dark_red, italic = true },
	MiniStarterHeader = colors.Yellow,
	MiniStarterInactive = { fg = p.grey,  },
	piniStarterItem = { fg = p.fg, bg = config.transparent and p.none or p.bg0 },
	MiniStarterItemBullet = { fg = p.grey },
	MiniStarterItemPrefix = { fg = p.yellow },
	MiniStarterSection = colors.LightGrey,
	MiniStarterQuery = { fg = p.cyan },
	MiniStatuslineDevinfo = { fg = p.fg, bg = p.bg2 },
	MiniStatuslineFileinfo = { fg = p.fg, bg = p.bg2 },
	MiniStatuslineFilename = { fg = p.grey, bg = p.bg1 },
	MiniStatuslineInactive = { fg = p.grey, bg = p.bg0 },
	MiniStatuslineModeCommand = { fg = p.bg0, bg = p.yellow, bold = true },
	MiniStatuslineModeInsert = { fg = p.bg0, bg = p.blue, bold = true },
	MiniStatuslineModeNormal = { fg = p.bg0, bg = p.green, bold = true },
	MiniStatuslineModeOther = { fg = p.bg0, bg = p.cyan, bold = true },
	MiniStatuslineModeReplace = { fg = p.bg0, bg = p.red, bold = true },
	MiniStatuslineModeVisual = { fg = p.bg0, bg = p.purple, bold = true },
	MiniSurround = { fg = p.bg0, bg = p.orange },
	MiniTablineCurrent = { bold = true },
	MiniTablineFill = { fg = p.grey, bg = p.bg1 },
	MiniTablineHidden = { fg = p.fg, bg = p.bg1 },
	MiniTablineModifiedCurrent = { fg = p.orange, bold = true, italic = true },
	MiniTablineModifiedHidden = { fg = p.light_grey, bg = p.bg1, italic = true },
	MiniTablineModifiedVisible = { fg = p.yellow, bg = p.bg0, italic = true },
	MiniTablineTabpagesection = { fg = p.bg0, bg = p.bg_yellow },
	MiniTablineVisible = { fg = p.light_grey, bg = p.bg0 },
	MiniTestEmphasis = { bold = true },
	MiniTestFail = { fg = p.red, bold = true },
	MiniTestPass = { fg = p.green, bold = true },
	MiniTrailspace = { bg = p.red },

	-- [[[[[[[[[[[[[[[[[[[[[[[
	--    LANGUAGE SPECIFIC
	-- ]]]]]]]]]]]]]]]]]]]]]]]

	-- C
	cInclude = colors.Blue,
	cStorageClass = colors.Purple,
	cTypedef = colors.Purple,
	cDefine = colors.Cyan,
	cTSInclude = colors.Blue,
	cTSConstant = colors.Cyan,
	cTSConstMacro = colors.Purple,
	cTSOperator = colors.Purple,

	-- C++
	cppStatement = { fg = p.purple, bold = true },
	cppTSInclude = colors.Blue,
	cppTSConstant = colors.Cyan,
	cppTSConstMacro = colors.Purple,
	cppTSOperator = colors.Purple,

	-- MARKDOWN
	markdownBlockquote = colors.Grey,
	markdownBold = { fg = p.none, bold = true },
	markdownBoldDelimiter = colors.Grey,
	markdownCode = colors.Green,
	markdownCodeBlock = colors.Green,
	markdownCodeDelimiter = colors.Yellow,
	markdownH1 = { fg = p.red, bold = true },
	markdownH2 = { fg = p.purple, bold = true },
	markdownH3 = { fg = p.orange, bold = true },
	markdownH4 = { fg = p.red, bold = true },
	markdownH5 = { fg = p.purple, bold = true },
	markdownH6 = { fg = p.orange, bold = true },
	markdownHeadingDelimiter = colors.Grey,
	markdownHeadingRule = colors.Grey,
	markdownId = colors.Yellow,
	markdownIdDeclaration = colors.Red,
	markdownItalic = { fg = p.none, italic = true },
	markdownItalicDelimiter = { fg = p.grey, italic = true },
	markdownLinkDelimiter = colors.Grey,
	markdownLinkText = colors.Red,
	markdownLinkTextDelimiter = colors.Grey,
	markdownListMarker = colors.Red,
	markdownOrderedListMarker = colors.Red,
	markdownRule = colors.Purple,
	markdownUrl = { fg = p.blue, underline = true },
	markdownUrlDelimiter = colors.Grey,
	markdownUrlTitleDelimiter = colors.Green,

	-- PHP
	phpFunctions = { fg = p.fg },
	phpMethods = colors.Cyan,
	phpStructure = colors.Purple,
	phpOperator = colors.Purple,
	phpMemberSelector = { fg = p.fg },
	phpVarSelector = { fg = p.orange },
	phpIdentifier = { fg = p.orange },
	phpBoolean = colors.Cyan,
	phpNumber = colors.Orange,
	phpHereDoc = colors.Green,
	phpNowDoc = colors.Green,
	phpSCKeyword = { fg = p.purple,  },
	phpFCKeyword = { fg = p.purple,  },
	phpRegion = colors.Blue,

	-- SCALA
	scalaNameDefinition = { fg = p.fg },
	scalaInterpolationBoundary = colors.Purple,
	scalaInterpolation = colors.Purple,
	scalaTypeOperator = colors.Red,
	scalaOperator = colors.Red,
	scalaKeywordModifier = { fg = p.red,  },

	-- LaTeX
	latexTSInclude = colors.Blue,
	latexTSFuncMacro = { fg = p.fg },
	latexTSEnvironment = { fg = p.cyan, bold = true },
	latexTSEnvironmentName = colors.Yellow,
	texCmdEnv = colors.Cyan,
	texEnvArgName = colors.Yellow,
	latexTSTitle = colors.Green,
	latexTSType = colors.Blue,
	latexTSMath = colors.Orange,
	texMathZoneX = colors.Orange,
	texMathZoneXX = colors.Orange,
	texMathDelimZone = colors.LightGrey,
	texMathDelim = colors.Purple,
	texMathOper = colors.Red,
	texCmd = colors.Purple,
	texCmdPart = colors.Blue,
	texCmdPackage = colors.Blue,
	texPgfType = colors.Yellow,

	-- VIM
	vimOption = colors.Red,
	vimSetEqual = colors.Yellow,
	vimMap = colors.Purple,
	vimMapModKey = colors.Orange,
	vimNotation = colors.Red,
	vimMapLhs = { fg = p.fg },
	vimMapRhs = colors.Blue,
	vimVar = { fg = p.fg, },
	vimCommentTitle = { fg = p.light_grey,  },
}

function M.setup()
    load_highlights(M.highlights)
    if config.terminal_colors then
        terminal.setup()
    end
end

return M
