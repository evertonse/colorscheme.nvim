local hl = vim.api.nvim_set_hl

local function highlight(group)
	for name, setting in pairs(group) do
		hl(0, name, setting)
	end
end

local theme = {}

theme.set_highlights = function(opts)
  local c = require('vscode.colors').get_colors()
  local vs = require('vscode.vscolors')
  c = vim.tbl_extend('force', c, opts['color_overrides'])
  local isDark = vim.o.background == 'dark'

  hl(0, 'ColorColumn',   { fg = 'NONE', bg = c.vscCursorDarkDark })
  hl(0, 'Cursor',        { fg = c.vscCursorDark, bg = c.vscCursorLight })
  hl(0, 'CursorLine',    { bg = c.vscCursorDarkDark })
  hl(0, 'CursorColumn',  { fg = 'NONE', bg = c.vscCursorDarkDark })
  hl(0, 'Directory',     { fg = c.vscYellowOrange, bg = c.vscBack })
  hl(0, 'DiffAdd',       { fg = 'NONE', bg = c.vscDiffGreenLight })
  hl(0, 'DiffChange',    { fg = 'NONE', bg = c.vscDiffRedDark })
  hl(0, 'DiffDelete',    { fg = 'NONE', bg = c.vscDiffRedLight })
  hl(0, 'DiffText',      { fg = 'NONE', bg = c.vscDiffRedLight })
  hl(0, 'EndOfBuffer',   { fg = c.vscBack, bg = 'NONE' })
  hl(0, 'ErrorMsg',      { fg = c.vscRed, bg = c.vscBack })
  hl(0, 'VertSplit',     { fg = c.vscSplitDark, bg = c.vscBack })
  hl(0, 'Folded',        { fg = 'NONE', bg = c.vscFoldBackground })
  hl(0, 'FoldColumn',    { fg = c.vscLineNumber, bg = c.vscBack })
  hl(0, 'SignColumn',    { fg = 'NONE', bg = c.vscBack })
  hl(0, 'IncSearch',     { fg = c.vscNone, bg = c.vscSearchCurrent })
  hl(0, 'LineNr',        { fg = c.vscLineNumber, bg = c.vscBack })
  hl(0, 'CursorLineNr',  { fg = c.vscPopupFront, bg = c.vscBack })
  hl(0, 'MatchParen',    { fg = c.vscNone, bg = c.vscCursorDark })
  hl(0, 'ModeMsg',       { fg = c.vscFront, bg = c.vscLeftDark })
  hl(0, 'MoreMsg',       { fg = c.vscFront, bg = c.vscLeftDark })
  hl(0, 'NonText',       { fg = (isDark and c.vscLineNumber or c.vscTabOther), bg = c.vscNone })
  hl(0, 'Pmenu',         { fg = c.vscPopupFront, bg = c.vscPopupBack })
  hl(0, 'PmenuSel',      { fg = isDark and c.vscPopupFront or c.vscBack, bg = c.vscPopupHighlightBlue })
  hl(0, 'PmenuSbar',     { fg = 'NONE', bg = c.vscPopupHighlightGray })
  hl(0, 'PmenuThumb',    { fg = 'NONE', bg = c.vscPopupFront })
  hl(0, 'Question',      { fg = c.vscBlue, bg = c.vscBack })
  hl(0, 'Search',        { fg = c.vscNone, bg = c.vscSearch })
  hl(0, 'SpecialKey',    { fg = c.vscBlue, bg = c.vscNone })
  hl(0, 'StatusLine',    { fg = c.vscFront, bg = c.vscLeftMid })
  hl(0, 'StatusLineNC',  { fg = c.vscFront, bg = c.vscLeftDark })
  hl(0, 'Todo',          { fg = c.vscYellowOrange, bg = c.vscBack, bold = true })

  hl(0, 'TabLine',       { fg = c.vscFront, bg = c.vscTabOther })
  hl(0, 'TabLineFill',   { fg = c.vscFront, bg = c.vscTabOutside })
  hl(0, 'TabLineSel',    { fg = c.vscFront, bg = c.vscTabCurrent })
  hl(0, 'Title',         { fg = c.vscNone, bg = c.vscNone, bold = true })
  hl(0, 'Visual',        { fg = c.vscNone, bg = c.vscSelection })
  hl(0, 'VisualNOS',     { fg = c.vscNone, bg = c.vscSelection })
  hl(0, 'WarningMsg',    { fg = c.vscRed, bg = c.vscBack, bold = true })
  hl(0, 'WildMenu',      { fg = c.vscNone, bg = c.vscSelection })

  -- Syntax 
  hl(0, 'Comment',       { fg = vs.Comment, bg = 'NONE', italic = opts.italic_comments })
  hl(0, 'Constant',      { fg = c.vsMacro, bg = 'NONE' })
  hl(0, 'String',        { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'Character',     { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'Number',        { fg = c.vscLightGreen, bg = 'NONE' })
  hl(0, 'Boolean',       { fg = c.vscBlue, bg = 'NONE' })
  hl(0, 'Float',         { fg = c.vscLightGreen, bg = 'NONE' })
  hl(0, 'Identifier',    { fg = vs.Normal ,  bg = 'NONE' })
  hl(0, 'Function',      { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'Statement',     { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'Conditional',   { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'Repeat',        { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'Label',         { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'Operator',      { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'Keyword',       { fg = c.vscBlue, bg = 'NONE' })
  hl(0, 'Exception',     { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'PreProc',       { fg = vs.Grey, bg = 'NONE' }) -- changes namespaces as well for some reason
  hl(0, 'Namespace',     { fg = vs.Namespace, bg = 'NONE' })
  hl(0, 'Define',        { fg = vs.Grey, bg = 'NONE' })
  hl(0, 'Macro',         { fg = vs.Macro, bg = 'NONE' })
  hl(0, 'Type',          { fg = vs.Type, bg = 'NONE' })
  hl(0, 'StorageClass',  { fg = vs.Type, bg = 'NONE' })
  hl(0, 'Structure',     { fg = vs.Type, bg = 'NONE' })
  hl(0, 'Typedef',       { fg = vs.Type, bg = 'NONE' })
  hl(0, 'Special',       { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'SpecialChar',   { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'Tag',           { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'Delimiter',     { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'SpecialComment',{ fg = vs.Comment, bg = 'NONE' })
  hl(0, 'Debug',         { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'Underlined',    { fg = c.vscNone, bg = 'NONE', underline = true })
  hl(0, 'Conceal',       { fg = c.vscFront, bg = c.vscBack })
  hl(0, 'Ignore',        { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'Error',         { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
  hl(0, 'SpellBad',      { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
  hl(0, 'SpellCap',      { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
  hl(0, 'SpellRare',     { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
  hl(0, 'SpellLocal',    { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed })
  hl(0, 'Whitespace',    { fg = isDark and c.vscLineNumber or c.vscTabOther })

  
  -- Treesitter
local treesitter = {
	TSNamespace= { fg = vs.Namespace}, -- For any operator: `+`, but also `->` and `*` in C.
	TSVariable = { fg = vs.LocalVariable }, -- For parameters of a function.
	TSMethod = { fg = vs.Function}, -- For parameters of a function.
	TSInclude = { fg = vs.Grey}, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.

	TSParameter = { fg = vs.Parameter}, -- For parameters of a function.
	TSParameterReference = { fg = vs.Parameter}, -- For references to parameters of a function.
  TSTypeBuiltin = {fg = vs.Keyword}, 

	TSFuncMacro = { fg = vs.Macro }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
	TSConstMacro = { fg = fg = vs.Macro }, -- For constants that are defined by macros: `NULL` in C.
  --TSConstant = { }, -- For constants
	--TSKeyword = { fg = nord.nord9_gui }, -- For keywords that don't fall in previous categories.
	TSRepeat = { fg = vs.ControlFlow}, -- For keywords related to loops.
	TSConditional = { fg = vs.ControlFlow}, -- For keywords related to conditionnals.
	--TSKeywordFunction = { fg = nord.nord8_gui },
	TSKeywordReturn = { fg = vs.ControlFlow },
	--TSFunction = { fg = nord.nord8_gui }, -- For fuction (calls and definitions).
	--TSMethod = { fg = nord.nord7_gui }, -- For method calls and definitions.
	--TSFuncBuiltin = { fg = nord.nord8_gui },
	--TSVariable = { fg = nord.nord4_gui }, -- Any variable name that does not have another highlight.
	--TSVariableBuiltin = { fg = nord.nord4_gui },
  --[[

	TSCharacter = { fg = nord.nord14_gui }, -- For characters.
	TSConstructor = { fg = nord.nord9_gui }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
	TSFloat = { fg = nord.nord15_gui }, -- For floats
	TSNumber = { fg = nord.nord15_gui }, -- For all number
	TSString = { fg = nord.nord14_gui }, -- For strings.

	TSAttribute = { fg = nord.nord15_gui }, -- (unstable) TODO: docs
	TSBoolean = { fg = nord.nord9_gui }, -- For booleans.
	TSConstBuiltin = { fg = nord.nord7_gui }, -- For constant that are built in the language: `nil` in Lua.
	TSError = { fg = nord.nord11_gui }, -- For syntax/parser errors.
	TSException = { fg = nord.nord15_gui }, -- For exception related keywords.
	TSField = { fg = nord.nord4_gui }, -- For fields.
	TSLabel = { fg = nord.nord15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
	TSNamespace = { fg = nord.nord4_gui }, -- For identifiers referring to modules and namespaces.
	TSOperator = { fg = nord.nord9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
	TSProperty = { fg = nord.nord10_gui }, -- Same as `TSField`.
	TSPunctDelimiter = { fg = nord.nord8_gui }, -- For delimiters ie: `.`
	TSPunctBracket = { fg = nord.nord8_gui }, -- For brackets and parens.
	TSPunctSpecial = { fg = nord.nord8_gui }, -- For special punctutation that does not fall in the catagories before.
	TSStringRegex = { fg = nord.nord7_gui }, -- For regexes.
	TSStringEscape = { fg = nord.nord15_gui }, -- For escape characters within a string.
	TSSymbol = { fg = nord.nord15_gui }, -- For identifiers referring to symbols or atoms.
	TSType = { fg = nord.nord9_gui }, -- For types.
	TSTypeBuiltin = { fg = nord.nord9_gui }, -- For builtin types.
	TSTag = { fg = nord.nord4_gui }, -- Tags like html tag names.
	TSTagDelimiter = { fg = nord.nord15_gui }, -- Tag delimiter like `<` `>` `/`
	TSText = { fg = nord.nord4_gui }, -- For strings considenord11_gui text in a markup language.
	TSTextReference = { fg = nord.nord15_gui }, -- FIXME
	TSEmphasis = { fg = nord.nord10_gui }, -- For text to be represented with emphasis.
	TSUnderline = { fg = nord.nord4_gui, bg = nord.none, style = "underline" }, -- For text to be represented with an underline.
	TSTitle = { fg = nord.nord10_gui, bg = nord.none, style = "bold" }, -- Text that is part of a title.
	TSLiteral = { fg = nord.nord4_gui }, -- Literal text.
	TSURI = { fg = nord.nord14_gui }, -- Any URI like a link or email.
	TSAnnotation = { fg = nord.nord11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	TSComment = { fg = nord.nord3_gui_bright },
  --]]
	TSKeyword = { fg = vs.Keyword}, -- For keywords that don't fall in previous categories.
  --[[
	TSRepeat = { fg = nord.nord9_gui }, -- For keywords related to loops.
	TSKeywordFunction = { fg = nord.nord8_gui },
	TSFunction = { fg = nord.nord8_gui }, -- For fuction (calls and definitions).
	TSMethod = { fg = nord.nord7_gui }, -- For method calls and definitions.
	TSFuncBuiltin = { fg = nord.nord8_gui },
	TSVariable = { fg = nord.nord4_gui }, -- Any variable name that does not have another highlight.
	TSVariableBuiltin = { fg = nord.nord4_gui },
  --]]
}

-- Syntax highlight groups
local syntax = {
	Type = { fg = vs.Type}, -- int, long, char, etc.
	StorageClass = { fg = vs.Keyword}, -- static, register, volatile, etc.
	Structure = { fg = vs.Keyword }, -- struct, union, enum, etc.
	PreProc = { fg = vs.Debug}, -- generic Preprocessor
 -- Constant = { fg = vs.Debug}, -- any constant
  Include = { fg = vs.Grey}, -- preprocessor #include
  Define = { fg =  vs.Grey}, -- preprocessor #define
	PreCondit = { fg = vs.Debug}, -- preprocessor #if, #else, #endif, etc.
--[[
	character = { fg = nord.nord14_gui }, -- any character constant: 'c', '\n'
	number = { fg = nord.nord15_gui }, -- a number constant: 5
	boolean = { fg = nord.nord9_gui }, -- a boolean constant: true, false
	float = { fg = nord.nord15_gui }, -- a floating point constant: 2.3e10
	statement = { fg = nord.nord9_gui }, -- any statement
	label = { fg = nord.nord9_gui }, -- case, default, etc.
	operator = { fg = nord.nord9_gui }, -- sizeof", "+", "*", etc.
	exception = { fg = nord.nord9_gui }, -- try, catch, throw
	macro = { fg = nord.nord9_gui }, -- same as define
	typedef = { fg = nord.nord9_gui }, -- a typedef
	precondit = { fg = nord.nord13_gui }, -- preprocessor #if, #else, #endif, etc.
	special = { fg = nord.nord4_gui }, -- any special symbol
	specialchar = { fg = nord.nord13_gui }, -- special character in a constant
	tag = { fg = nord.nord4_gui }, -- you can use ctrl-] on this
	delimiter = { fg = nord.nord6_gui }, -- character that needs attention like , or .
	specialcomment = { fg = nord.nord8_gui }, -- special things inside a comment
	debug = { fg = nord.nord11_gui }, -- debugging statements
	underlined = { fg = nord.nord14_gui, bg = nord.none, style = "underline" }, -- text that stands out, html links
	ignore = { fg = nord.nord1_gui }, -- left blank, hidden
	error = { fg = nord.nord11_gui, bg = nord.none, style = "bold,underline" }, -- any erroneous construct
	Todo = { fg = nord.nord13_gui, bg = nord.none, style = "bold" },

	Comment = { fg = nord.nord3_gui_bright }, -- normal comments
	Conditional = { fg = nord.nord9_gui }, -- normal if, then, else, endif, switch, etc.
	Keyword = { fg = nord.nord9_gui }, -- normal for, do, while, etc.
	Repeat = { fg = nord.nord9_gui }, -- normal any other keyword
	Function = { fg = nord.nord8_gui }, -- normal function names
	Identifier = { fg = nord.nord9_gui }, -- any variable name
	String = { fg = nord.nord14_gui }, -- any string
     
--]]
}
--[[
  hl(0, '@function.call', { fg = vs.Debug, bg = 'NONE' })
  hl(0, '@keyword.return', { fg = vs.Debug, bg = 'NONE' })
  hl(0, '@error', { fg = c.vscRed, bg = 'NONE' })
  hl(0, '@punctuation.bracket', { fg = c.vscFront, bg = 'NONE' })
  hl(0, '@punctuation.special', { fg = c.vscFront, bg = 'NONE' })
  hl(0, '@comment', { fg = vs.Comment, bg = 'NONE', italic = opts.italic_comments })
  hl(0, '@constant', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, '@constant.builtin', { fg = c.vscBlue, bg = 'NONE' })
  hl(0, '@constant.macro', { fg = c.vscBlueGreen, bg = 'NONE' })
  hl(0, '@string.regex', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, '@string', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, '@character', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, '@number', { fg = c.vscLightGreen, bg = 'NONE' })
  hl(0, '@boolean', { fg = c.vscBlue, bg = 'NONE' })
  hl(0, '@float', { fg = c.vscLightGreen, bg = 'NONE' })
  hl(0, '@annotation', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, '@attribute', { fg = c.vscBlueGreen, bg = 'NONE' })
  hl(0, '@function.builtin', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, '@function', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, '@function.macro', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, '@parameter', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, '@parameter.reference', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, '@method', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, '@field', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, '@property', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, '@constructor', { fg = c.vscBlueGreen, bg = 'NONE' })
  hl(0, '@conditional', { fg = c.vscPink, bg = 'NONE' })
  hl(0, '@repeat', { fg = c.vscPink, bg = 'NONE' })
  hl(0, '@label', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, '@keyword', { fg = c.vscPink, bg = 'NONE' })
  hl(0, '@keyword.function', { fg = c.vscBlue, bg = 'NONE' })
  hl(0, '@keyword.operator', { fg = c.vscBlue, bg = 'NONE' })
  hl(0, '@operator', { fg = c.vscFront, bg = 'NONE' })
  hl(0, '@exception', { fg = c.vscPink, bg = 'NONE' })
  hl(0, '@type', { fg = vs.Type, bg = 'NONE' })
  hl(0, '@type.builtin', { fg = vs.Type, bg = 'NONE' })
  hl(0, '@type.qualifier', { fg = vs.Type, bg = 'NONE' })
  hl(0, '@storageClass', { fg = vs.Type, bg = 'NONE' })
  hl(0, '@structure', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, '@include', { fg = vs.Debug , bg = 'NONE' })
  hl(0, '@variable', { fg = vs.Debug, bg = 'NONE' })
  hl(0, '@variable.builtin', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, '@text', { fg = c.vscFront, bg = 'NONE' })
  hl(0, '@text.underline', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, '@tag', { fg = c.vscBlue, bg = 'NONE' })
  hl(0, '@tag.delimiter', { fg = c.vscGray, bg = 'NONE' })
  hl(0, '@tag.attribute', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, '@text.title', { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true })
  hl(0, '@text.literal', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'markdown@text.literal', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'markdown_inline@text.literal', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, '@text.emphasis', { fg = c.vscFront, bg = 'NONE', italic = true })
  hl(0, '@text.strong', { fg = isDark and c.vscBlue or c.vscViolet, bold = true })
  hl(0, '@text.uri', { fg = c.vscFront, bg = 'NONE' })
  hl(0, '@textReference', { fg = isDark and c.vscOrange or c.vscYellowOrange })
  hl(0, '@punctuation.delimiter', { fg = c.vscFront, bg = 'NONE' })
  hl(0, '@stringEscape', { fg = isDark and c.vscOrange or c.vscYellowOrange, bold = true })

  hl(0, '@namespace', { fg = "#FFFF00", bg = 'NONE' })
  hl(0, '@text.note', { fg = c.vscBlueGreen, bg = 'NONE', bold = true })
  hl(0, '@text.warning', { fg = c.vscYellowOrange, bg = 'NONE', bold = true })
  hl(0, '@text.danger', { fg = c.vscRed, bg = 'NONE', bold = true })
--]]
  
  highlight(syntax)
  highlight(treesitter)
  
  -- Markdown
  hl(0, 'markdownBold', { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true })
  hl(0, 'markdownCode', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'markdownRule', { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true })
  hl(0, 'markdownCodeDelimiter', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'markdownHeadingDelimiter', { fg = isDark and c.vscBlue or c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'markdownFootnote', { fg = isDark and c.vscOrange or c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'markdownFootnoteDefinition', { fg = isDark and c.vscOrange or c.vscYellowOrange })
  hl(0, 'markdownUrl', { fg = c.vscFront, bg = 'NONE', underline = true })
  hl(0, 'markdownLinkText', { fg = isDark and c.vscOrange or c.vscYellowOrange })
  hl(0, 'markdownEscape', { fg = isDark and c.vscOrange or c.vscYellowOrange })

  -- JSON
  hl(0, 'jsonKeyword', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsonEscape', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'jsonNull', { fg = c.vscBlue, bg = 'NONE' })
  hl(0, 'jsonBoolean', { fg = c.vscBlue, bg = 'NONE' })

  -- HTML
  hl(0, 'htmlTag', { fg = c.vscGray, bg = 'NONE' })
  hl(0, 'htmlEndTag', { fg = c.vscGray, bg = 'NONE' })
  hl(0, 'htmlTagName', { fg = c.vscBlue, bg = 'NONE' })
  hl(0, 'htmlSpecialTagName', { fg = c.vscBlue, bg = 'NONE' })
  hl(0, 'htmlArg', { fg = c.vscLightBlue, bg = 'NONE' })

  -- PHP
  hl(0, 'phpStaticClasses', { fg = c.vscBlueGreen, bg = 'NONE' })
  hl(0, 'phpMethod', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'phpClass', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'phpFunction', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'phpInclude', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'phpUseClass', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'phpRegion', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'phpMethodsVar', { fg = c.vscLightBlue, bg = 'NONE' })

  -- CSS
  hl(0, 'cssBraces', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'cssInclude', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'cssTagName', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'cssClassName', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'cssPseudoClass', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'cssPseudoClassId', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'cssPseudoClassLang', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'cssIdentifier', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'cssProp', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'cssDefinition', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'cssAttr', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssAttrRegion', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssColor', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssFunction', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssFunctionName', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssVendor', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssValueNumber', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssValueLength', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssUnitDecorators', { fg = c.vscOrange, bg = 'NONE' })
  hl(0, 'cssStyle', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'cssImportant', { fg = vs.Type, bg = 'NONE' })

  -- JavaScript
  hl(0, 'jsVariableDef', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsFuncArgs', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsFuncBlock', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsRegexpString', { fg = c.vscLightRed, bg = 'NONE' })
  hl(0, 'jsThis', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'jsOperatorKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'jsDestructuringBlock', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsObjectKey', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsGlobalObjects', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'jsModuleKeyword', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsClassDefinition', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'jsClassKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'jsExtendsKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'jsExportDefault', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'jsFuncCall', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'jsObjectValue', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsParen', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsObjectProp', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsIfElseBlock', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsParenIfElse', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsSpreadOperator', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsSpreadExpression', { fg = c.vscLightBlue, bg = 'NONE' })

  -- Typescript
  hl(0, 'typescriptLabel', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptExceptions', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptBraces', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'typescriptEndColons', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptParens', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'typescriptDocTags', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptDocComment', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptLogicSymbols', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptImport', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'typescriptBOM', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptVariableDeclaration', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptVariable', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptExport', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'typescriptAliasDeclaration', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptAliasKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptClassName', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptAccessibilityModifier', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptOperator', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptArrowFunc', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptMethodAccessor', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptMember', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'typescriptTypeReference', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptTemplateSB', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'typescriptArrowFuncArg', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptParamImpl', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptFuncComma', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptCastKeyword', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptCall', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptCase', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptReserved', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'typescriptDefault', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptDecorator', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'typescriptPredefinedType', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptClassHeritage', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptClassExtends', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptClassKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptBlock', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptDOMDocProp', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptTemplateSubstitution', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptClassBlock', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptFuncCallArg', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptIndexExpr', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptConditionalParen', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptArray', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'typescriptES6SetProp', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptObjectLiteral', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptTypeParameter', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptEnumKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptEnum', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptLoopParen', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptParenExp', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptModule', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptAmbientDeclaration', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptFuncTypeArrow', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptInterfaceHeritage', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptInterfaceName', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptInterfaceKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptInterfaceExtends', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptGlobal', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'typescriptAsyncFuncKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptFuncKeyword', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'typescriptGlobalMethod', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'typescriptPromiseMethod', { fg = c.vscYellow, bg = 'NONE' })

  -- XML
  hl(0, 'xmlTag', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'xmlTagName', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'xmlEndTag', { fg = vs.Type, bg = 'NONE' })

  -- Ruby
  hl(0, 'rubyClassNameTag', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'rubyClassName', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'rubyModuleName', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'rubyConstant', { fg = vs.TypeGreen, bg = 'NONE' })

  -- Golang
  hl(0, 'goPackage', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goImport', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goVar', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goConst', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goStatement', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'goType', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'goSignedInts', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'goUnsignedInts', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'goFloats', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'goComplexes', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'goBuiltins', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'goBoolean', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goPredefinedIdentifiers', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goTodo', { fg = c.vscGreen, bg = 'NONE' })
  hl(0, 'goDeclaration', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goDeclType', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goTypeDecl', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'goTypeName', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'goVarAssign', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'goVarDefs', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'goReceiver', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'goReceiverType', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'goFunctionCall', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'goMethodCall', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'goSingleDecl', { fg = c.vscLightBlue, bg = 'NONE' })

  -- Python
  hl(0, 'pythonStatement', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'pythonOperator', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'pythonException', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'pythonExClass', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'pythonBuiltinObj', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'pythonBuiltinType', { fg = vs.TypeGreen, bg = 'NONE' })
  hl(0, 'pythonBoolean', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'pythonNone', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'pythonTodo', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'pythonClassVar', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'pythonClassDef', { fg = vs.TypeGreen, bg = 'NONE' })

  -- TeX
  hl(0, 'texStatement', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'texBeginEnd', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'texBeginEndName', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'texOption', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'texBeginEndModifier', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'texDocType', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'texDocTypeArgs', { fg = c.vscLightBlue, bg = 'NONE' })

  -- Git
  hl(0, 'gitcommitHeader', { fg = c.vscGray, bg = 'NONE' })
  hl(0, 'gitcommitOnBranch', { fg = c.vscGray, bg = 'NONE' })
  hl(0, 'gitcommitBranch', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'gitcommitComment', { fg = c.vscGray, bg = 'NONE' })
  hl(0, 'gitcommitSelectedType', { fg = c.vscGreen, bg = 'NONE' })
  hl(0, 'gitcommitSelectedFile', { fg = c.vscGreen, bg = 'NONE' })
  hl(0, 'gitcommitDiscardedType', { fg = c.vscRed, bg = 'NONE' })
  hl(0, 'gitcommitDiscardedFile', { fg = c.vscRed, bg = 'NONE' })
  hl(0, 'gitcommitOverflow', { fg = c.vscRed, bg = 'NONE' })
  hl(0, 'gitcommitSummary', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'gitcommitBlank', { fg = c.vscPink, bg = 'NONE' })

  -- Lua
  hl(0, 'luaFuncCall', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'luaFuncArgName', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'luaFuncKeyword', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'luaLocal', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'luaBuiltIn', { fg = vs.Type, bg = 'NONE' })

  -- SH
  hl(0, 'shDeref', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'shVariable', { fg = c.vscLightBlue, bg = 'NONE' })

  -- SQL
  hl(0, 'sqlKeyword', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'sqlFunction', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'sqlOperator', { fg = c.vscPink, bg = 'NONE' })

  -- YAML
  hl(0, 'yamlKey', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'yamlConstant', { fg = vs.Type, bg = 'NONE' })

  -- Gitgutter
  hl(0, 'GitGutterAdd', { fg = c.vscGreen, bg = 'NONE' })
  hl(0, 'GitGutterChange', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'GitGutterDelete', { fg = c.vscRed, bg = 'NONE' })

  -- Git Signs
  hl(0, 'GitSignsAdd', { fg = c.vscGreen, bg = 'NONE' })
  hl(0, 'GitSignsChange', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'GitSignsDelete', { fg = c.vscRed, bg = 'NONE' })
  hl(0, 'GitSignsAddLn', { fg = c.vscBack, bg = c.vscGreen })
  hl(0, 'GitSignsChangeLn', { fg = c.vscBack, bg = c.vscYellow })
  hl(0, 'GitSignsDeleteLn', { fg = c.vscBack, bg = c.vscRed })

  -- NvimTree
  hl(0, 'NvimTreeRootFolder', { fg = c.vscFront, bg = 'NONE', bold = true })
  hl(0, 'NvimTreeGitDirty', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'NvimTreeGitNew', { fg = c.vscGreen, bg = 'NONE' })
  hl(0, 'NvimTreeImageFile', { fg = c.vscViolet, bg = 'NONE' })
  hl(0, 'NvimTreeEmptyFolderName', { fg = c.vscGray, bg = 'NONE' })
  hl(0, 'NvimTreeFolderName', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'NvimTreeSpecialFile', { fg = c.vscPink, bg = 'NONE', underline = true })
  hl(0, 'NvimTreeNormal', { fg = c.vscFront, bg = opts.disable_nvimtree_bg and c.vscBack or c.vscLeftDark })
  hl(0, 'NvimTreeCursorLine', { fg = 'NONE', bg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftMid })
  hl(0, 'NvimTreeVertSplit', { fg = opts.disable_nvimtree_bg and c.vscSplitDark or c.vscBack, bg = c.vscBack })
  hl(0, 'NvimTreeEndOfBuffer', { fg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftDark })
  hl(0, 'NvimTreeOpenedFolderName', { fg = 'NONE', bg = opts.disable_nvimtree_bg and c.vscCursorDarkDark or c.vscLeftDark })
  hl(0, 'NvimTreeGitRenamed', { fg = c.vscGitRenamed, bg = 'NONE' })
  hl(0, 'NvimTreeGitIgnored', { fg = c.vscGitIgnored, bg = 'NONE' })
  hl(0, 'NvimTreeGitDeleted', { fg = c.vscGitDeleted, bg = 'NONE' })
  hl(0, 'NvimTreeGitStaged', { fg = c.vscGitStageModified, bg = 'NONE' })
  hl(0, 'NvimTreeGitMerge', { fg = c.vscGitUntracked, bg = 'NONE' })
  hl(0, 'NvimTreeGitDirty', { fg = c.vscGitModified, bg = 'NONE' })
  hl(0, 'NvimTreeGitNew', { fg = c.vscGitAdded, bg = 'NONE' })

  -- Bufferline
  hl(0, 'BufferLineIndicatorSelected', { fg = c.vscLeftDark, bg = 'NONE' })
  hl(0, 'BufferLineFill', { fg = 'NONE', bg = c.vscLeftDark })

  -- BarBar
  hl(0, 'BufferCurrent', { fg = c.vscFront, bg = c.vscTabCurrent })
  hl(0, 'BufferCurrentIndex', { fg = c.vscFront, bg = c.vscTabCurrent })
  hl(0, 'BufferCurrentMod', { fg = c.vscYellowOrange, bg = c.vscTabCurrent })
  hl(0, 'BufferCurrentSign', { fg = c.vscFront, bg = c.vscTabCurrent })
  hl(0, 'BufferCurrentTarget', { fg = c.vscRed, bg = c.vscTabCurrent })
  hl(0, 'BufferVisible', { fg = c.vscGray, bg = c.vscTabCurrent })
  hl(0, 'BufferVisibleIndex', { fg = c.vscGray, bg = c.vscTabCurrent })
  hl(0, 'BufferVisibleMod', { fg = c.vscYellowOrange, bg = c.vscTabCurrent })
  hl(0, 'BufferVisibleSign', { fg = c.vscGray, bg = c.vscTabCurrent })
  hl(0, 'BufferVisibleTarget', { fg = c.vscRed, bg = c.vscTabCurrent })
  hl(0, 'BufferInactive', { fg = c.vscGray, bg = c.vscTabOther })
  hl(0, 'BufferInactiveIndex', { fg = c.vscGray, bg = c.vscTabOther })
  hl(0, 'BufferInactiveMod', { fg = c.vscYellowOrange, bg = c.vscTabOther })
  hl(0, 'BufferInactiveSign', { fg = c.vscGray, bg = c.vscTabOther })
  hl(0, 'BufferInactiveTarget', { fg = c.vscRed, bg = c.vscTabOther })
  hl(0, 'BufferTabpages', { fg = c.vscFront, bg = c.vscTabOther })
  hl(0, 'BufferTabpagesFill', { fg = c.vscFront, bg = c.vscTabOther })

  -- IndentBlankLine
  hl(0, 'IndentBlanklineContextChar', { fg = c.vscContextCurrent, bg = 'NONE', nocombine = true })
  hl(0, 'IndentBlanklineContextStart', { sp = c.vscContextCurrent, bg = 'NONE', nocombine = true, underline = true })
  hl(0, 'IndentBlanklineChar', { fg = c.vscContext, bg = 'NONE', nocombine = true })
  hl(0, 'IndentBlanklineSpaceChar', { fg = c.vscContext, bg = 'NONE', nocombine = true })
  hl(0, 'IndentBlanklineSpaceCharBlankline', { fg = c.vscContext, bg = 'NONE', nocombine = true })

  -- LSP
  hl(0, 'DiagnosticError', { fg = c.vscRed, bg = 'NONE' })
  hl(0, 'DiagnosticWarn', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'DiagnosticInfo', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'DiagnosticHint', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'DiagnosticUnderlineError', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscRed })
  hl(0, 'DiagnosticUnderlineWarn', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscYellow })
  hl(0, 'DiagnosticUnderlineInfo', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vs.Type })
  hl(0, 'DiagnosticUnderlineHint', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vs.Type })
  hl(0, 'LspReferenceText', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })
  hl(0, 'LspReferenceRead', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })
  hl(0, 'LspReferenceWrite', { fg = 'NONE', bg = isDark and c.vscPopupHighlightGray or c.vscPopupHighlightLightBlue })

  -- Nvim compe
  hl(0, 'CmpItemKindVariable', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'CmpItemKindInterface', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'CmpItemKindText', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'CmpItemKindFunction', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'CmpItemKindMethod', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'CmpItemKindKeyword', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'CmpItemKindProperty', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'CmpItemKindUnit', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'CmpItemKindConstructor', { fg = c.vscUiOrange, bg = 'NONE' })
  hl(0, 'CmpItemMenu', { fg = c.vscPopupFront, bg = 'NONE' })
  hl(0, 'CmpItemAbbr', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'CmpItemAbbrDeprecated', { fg = c.vscCursorDark, bg = c.vscPopupBack, strikethrough = true })
  hl(0, 'CmpItemAbbrMatch', { fg = isDark and c.vscMediumBlue or c.vscDarkBlue, bg = 'NONE', bold = true })
  hl(0, 'CmpItemAbbrMatchFuzzy', { fg = isDark and c.vscMediumBlue or c.vscDarkBlue, bg = 'NONE', bold = true })

  -- Dashboard
  hl(0, 'DashboardHeader', { fg = vs.Type, bg = 'NONE' })
  hl(0, 'DashboardCenter', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'DashboardCenterIcon', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'DashboardShortCut', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'DashboardFooter', { fg = vs.Type, bg = 'NONE', italic = true })

  if isDark then
    hl(0, 'NvimTreeFolderIcon', { fg = vs.Type, bg = 'NONE' })
    hl(0, 'NvimTreeIndentMarker', { fg = c.vscLineNumber, bg = 'NONE' })

    hl(0, 'LspFloatWinNormal', { fg = c.vscFront, bg = 'NONE' })
    hl(0, 'LspFloatWinBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaHoverBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaSignatureHelpBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaCodeActionBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaDefPreviewBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspLinesDiagBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaRenameBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaBorderTitle', { fg = c.vscCursorDark, bg = 'NONE' })
    hl(0, 'LSPSagaDiagnosticTruncateLine', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaDiagnosticBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaDiagnosticBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaShTruncateLine', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaShTruncateLine', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaDocTruncateLine', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaRenameBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'LspSagaLspFinderBorder', { fg = c.vscLineNumber, bg = 'NONE' })

    hl(0, 'TelescopePromptBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'TelescopeResultsBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'TelescopePreviewBorder', { fg = c.vscLineNumber, bg = 'NONE' })
    hl(0, 'TelescopeNormal', { fg = c.vscFront, bg = 'NONE' })
    hl(0, 'TelescopeSelection', { fg = c.vscFront, bg = c.vscPopupHighlightBlue })
    hl(0, 'TelescopeMultiSelection', { fg = c.vscFront, bg = c.vscPopupHighlightBlue })
    hl(0, 'TelescopeMatching', { fg = c.vscMediumBlue, bg = 'NONE', bold = true })
    hl(0, 'TelescopePromptPrefix', { fg = c.vscFront, bg = 'NONE' })

    -- symbols-outline
    -- white fg and lualine blue bg
    hl(0, 'FocusedSymbol', { fg = '#ffffff', bg = c.vscUiBlue })
    hl(0, 'SymbolsOutlineConnector', { fg = c.vscLineNumber, bg = 'NONE' })
  else
      hl(0, 'NvimTreeFolderIcon', { fg = c.vscDarkBlue, bg = 'NONE' })
      hl(0, 'NvimTreeIndentMarker', { fg = c.vscTabOther, bg = 'NONE' })

      hl(0, 'LspFloatWinNormal', { fg = c.vscFront, bg = 'NONE' })
      hl(0, 'LspFloatWinBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaHoverBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaSignatureHelpBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaCodeActionBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaDefPreviewBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspLinesDiagBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaRenameBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaBorderTitle', { fg = c.vscCursorDark, bg = 'NONE' })
      hl(0, 'LSPSagaDiagnosticTruncateLine', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaDiagnosticBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaDiagnosticBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaShTruncateLine', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaShTruncateLine', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaDocTruncateLine', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaRenameBorder', { fg = c.vscTabOther, bg = 'NONE' })
      hl(0, 'LspSagaLspFinderBorder', { fg = c.vscTabOther, bg = 'NONE' })

      hl(0, 'TelescopePromptBorder', { fg=c.vscTabOther, bg='NONE' })
      hl(0, 'TelescopeResultsBorder', { fg=c.vscTabOther, bg='NONE' })
      hl(0, 'TelescopePreviewBorder', { fg=c.vscTabOther, bg='NONE' })
      hl(0, 'TelescopeNormal', { fg=c.vscFront, bg='NONE' })
      hl(0, 'TelescopeSelection', { fg='#FFFFFF', bg=c.vscPopupHighlightBlue })
      hl(0, 'TelescopeMultiSelection', { fg=c.vscBack, bg=c.vscPopupHighlightBlue })
      hl(0, 'TelescopeMatching', { fg='orange', bg='NONE', bold=true, nil  })
      hl(0, 'TelescopePromptPrefix', { fg=c.vscFront, bg='NONE' })

      -- COC.nvim
      hl(0, 'CocFloating', { fg='NONE', bg=c.vscPopupBack })
      hl(0, 'CocMenuSel', { fg='#FFFFFF', bg='#285EBA' })
      hl(0, 'CocSearch', { fg='#2A64B9', bg='NONE' })

      -- Pmenu
      hl(0, 'Pmenu', { fg='NONE', bg=c.vscPopupBack })
      hl(0, 'PmenuSel', { fg='#FFFFFF', bg='#285EBA' })

      -- symbols-outline
      -- white fg and lualine blue bg
      hl(0, 'FocusedSymbol', { fg=c.vscBack, bg='#AF00DB' })
      hl(0, 'SymbolsOutlineConnector', { fg=c.vscTabOther, bg='NONE' })
  end
end

theme.link_highlight = function()
  -- Legacy groups for official git.vim and diff.vim syntax
  hl(0, 'diffAdded', { link = 'DiffAdd' })
  hl(0, 'diffChanged', { link = 'DiffChange' })
  hl(0, 'diffRemoved', { link = 'DiffDelete' })
  -- Nvim compe
  hl(0, 'CompeDocumentation', { link = 'Pmenu' })
  hl(0, 'CompeDocumentationBorder', { link = 'Pmenu' })
  hl(0, 'CmpItemKind', { link = 'Pmenu' })
  hl(0, 'CmpItemKindClass', { link = 'CmpItemKindConstructor' })
  hl(0, 'CmpItemKindModule', { link = 'CmpItemKindKeyword' })
  hl(0, 'CmpItemKindOperator', { link = '@operator' })
  hl(0, 'CmpItemKindReference', { link = '@parameter.reference' })
  hl(0, 'CmpItemKindValue', { link = '@field' })
  hl(0, 'CmpItemKindField', { link = '@field' })
  hl(0, 'CmpItemKindEnum', { link = '@field' })
  hl(0, 'CmpItemKindSnippet', { link = '@text' })
  hl(0, 'CmpItemKindColor', { link = 'cssColor' })
  hl(0, 'CmpItemKindFile', { link = '@text.uri' })
  hl(0, 'CmpItemKindFolder', { link = '@text.uri' })
  hl(0, 'CmpItemKindEvent', { link = '@constant' })
  hl(0, 'CmpItemKindEnumMember', { link = '@field' })
  hl(0, 'CmpItemKindConstant', { link = '@constant' })
  hl(0, 'CmpItemKindStruct', { link = '@structure' })
  hl(0, 'CmpItemKindTypeParameter', { link = '@parameter' })
end

return theme
