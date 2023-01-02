local hl = vim.api.nvim_set_hl
local theme = {}

local highlight = function(group)
  for item, color_opts in pairs(group) do
    hl(0,item,color_opts)
  end
end

theme.set_highlights = function(opts)
  local c = require('vscode.colors').get_colors()
  c = vim.tbl_extend('force', c, opts['color_overrides'])
  local isDark = vim.o.background == 'dark'

  local editor = {
    Normal          =   { fg = c.vscFront, bg = c.vscBack },
    ColorColumn     =   { fg = 'NONE', bg = c.vscCursorDarkDark },
    Cursor          =   { fg = c.vscCursorDark, bg = c.vscCursorLight },
    CursorLine      =   { bg = c.vscCursorDarkDark },
    CursorColumn    =   { fg = 'NONE', bg = c.vscCursorDarkDark },
    Directory       =   { fg = c.vscYellowOrange, bg = c.vscBack },
    DiffAdd         =   { fg = 'NONE', bg = c.vscDiffGreenLight },
    DiffChange      =   { fg = 'NONE', bg = c.vscDiffRedDark },
    DiffDelete      =   { fg = 'NONE', bg = c.vscDiffRedLight },
    DiffText        =   { fg = 'NONE', bg = c.vscDiffRedLight },
    EndOfBuffer     =   { fg = c.vscBack, bg = 'NONE' },
    ErrorMsg        =   { fg = c.vscRed, bg = c.vscBack },
    VertSplit       =   { fg = c.vscSplitDark, bg = c.vscBack },
    Folded          =   { fg = 'NONE', bg = c.vscFoldBackground },
    FoldColumn      =   { fg = c.vscLineNumber, bg = c.vscBack },
    SignColumn      =   { fg = 'NONE', bg = c.vscBack },
    IncSearch       =   { fg = c.vscNone, bg = c.vscSearchCurrent },
    LineNr          =   { fg = c.vscLineNumber, bg = c.vscBack },
    CursorLineNr    =   { fg = c.vscPopupFront, bg = c.vscBack },
    MatchParen      =   { fg = c.vscNone, bg = c.vscCursorDark },
    ModeMsg         =   { fg = c.vscFront, bg = c.vscLeftDark },
    MoreMsg         =   { fg = c.vscFront, bg = c.vscLeftDark },
    NonText         =   { fg = (isDark and c.vscLineNumber or c.vscTabOther), bg = c.vscNone },
    Pmenu           =   { fg = c.vscPopupFront, bg = c.vscPopupBack },
    PmenuSel        =   { fg = isDark and c.vscPopupFront or c.vscBack, bg = c.vscPopupHighlightBlue },
    PmenuSbar       =   { fg = 'NONE', bg = c.vscPopupHighlightGray },
    PmenuThumb      =   { fg = 'NONE', bg = c.vscPopupFront },
    Question        =   { fg = c.vscBlue, bg = c.vscBack },
    Search          =   { fg = c.vscNone, bg = c.vscSearch },
    SpecialKey      =   { fg = c.vscBlue, bg = c.vscNone },
    StatusLine      =   { fg = c.vscFront, bg = c.vscLeftMid },
    StatusLineNC    =   { fg = c.vscFront, bg = c.vscLeftDark },
    Todo            =   { fg = c.vscYellowOrange, bg = c.vscBack, bold = true },
    TabLine         =   { fg = c.vscFront, bg = c.vscTabOther },
    TabLineFill     =   { fg = c.vscFront, bg = c.vscTabOutside },
    TabLineSel      =   { fg = c.vscFront, bg = c.vscTabCurrent },
    Title           =   { fg = c.vscNone, bg = c.vscNone, bold = true },
    Visual          =   { fg = c.vscNone, bg = c.vscSelection },
    VisualNOS       =   { fg = c.vscNone, bg = c.vscSelection },
    WarningMsg      =   { fg = c.vscRed, bg = c.vscBack, bold = true },
    WildMenu        =   { fg = c.vscNone, bg = c.vscSelection }
  }

  local syntax = {
    Comment         =   { fg = c.vsComment, bg = 'NONE', italic = opts.italic_comments },
    Constant        =   { fg = c.vsMacro, bg = 'NONE' },
    String          =   { fg = c.vscOrange, bg = 'NONE' },
    Character       =   { fg = c.vscOrange, bg = 'NONE' },
    Number          =   { fg = c.vscLightGreen, bg = 'NONE' },
    Boolean         =   { fg = c.vscBlue, bg = 'NONE' },
    Float           =   { fg = c.vscLightGreen, bg = 'NONE' },
    Identifier      =   { fg = c.vscLightBlue,  bg = 'NONE' },
    Function        =   { fg = c.vscYellow, bg = 'NONE' },
    Statement       =   { fg = c.vscPink, bg = 'NONE' },
    Conditional     =   { fg = c.vscPink, bg = 'NONE' },
    Repeat          =   { fg = c.vscPink, bg = 'NONE' },
    Label           =   { fg = c.vscPink, bg = 'NONE' },
    Operator        =   { fg = c.vscFront, bg = 'NONE' },
    Keyword         =   { fg = c.vscBlue, bg = 'NONE' },
    Exception       =   { fg = c.vscPink, bg = 'NONE' },
    PreProc         =   { fg = c.vsGrey, bg = 'NONE' },
    Include         =   { fg = c.vsGrey, bg = 'NONE' },
    pragma          =   { fg = c.vsGrey, bg = 'NONE' },
    Define          =   { fg = c.vsGrey, bg = 'NONE' },
    Macro           =   { fg = c.vsGrey, bg = 'NONE' },
    Type            =   { fg = c.vsType, bg = 'NONE' },
    StorageClass    =   { fg = c.vsType, bg = 'NONE' },
    Structure       =   { fg = c.vsType, bg = 'NONE' },
    Typedef         =   { fg = c.vsType, bg = 'NONE' },
    Special         =   { fg = c.vscYellowOrange, bg = 'NONE' },
    SpecialChar     =   { fg = c.vscFront, bg = 'NONE' },
    Tag             =   { fg = c.vscFront, bg = 'NONE' },
    Delimiter       =   { fg = c.vscFront, bg = 'NONE' },
    SpecialComment  =   { fg = c.vsComment, bg = 'NONE' },
    Debug           =   { fg = c.vscFront, bg = 'NONE' },
    Underlined      =   { fg = c.vscNone, bg = 'NONE', underline = true },
    Conceal         =   { fg = c.vscFront, bg = c.vscBack },
    Ignore          =   { fg = c.vscFront, bg = 'NONE' },
    Error           =   { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
    SpellBad        =   { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
    SpellCap        =   { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
    SpellRare       =   { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
    SpellLocal      =   { fg = c.vscRed, bg = c.vscBack, undercurl = true, sp = c.vscRed },
    Whitespace      =   { fg = isDark and c.vscLineNumber or c.vscTabOther },
  }

  -- Treesitter
  local treesitter = {
  ['@error']= { fg = c.vscRed, bg = 'NONE' },
  ['@punctuation.bracket']= { fg = c.vscFront, bg = 'NONE' },
  ['@punctuation.special']= { fg = c.vscFront, bg = 'NONE' },
  ['@comment']= { fg = c.vsComment, bg = 'NONE', italic = opts.italic_comments },
  ['@constant']= { fg = c.vscYellow, bg = 'NONE' },
  ['@constant.builtin']= { fg = c.vscBlue, bg = 'NONE' },
  ['@constant.macro']= { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@string.regex']= { fg = c.vscOrange, bg = 'NONE' },
  ['@string']= { fg = c.vscOrange, bg = 'NONE' },
  ['@character']= { fg = c.vscOrange, bg = 'NONE' },
  ['@number']= { fg = c.vscLightGreen, bg = 'NONE' },
  ['@boolean']= { fg = c.vscBlue, bg = 'NONE' },
  ['@float']= { fg = c.vscLightGreen, bg = 'NONE' },
  ['@annotation']= { fg = c.vscYellow, bg = 'NONE' },
  ['@attribute']= { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@function.builtin']= { fg = c.vscYellow, bg = 'NONE' },
  ['@function']= { fg = c.vscYellow, bg = 'NONE' },
  ['@function.macro']= { fg = c.vscYellow, bg = 'NONE' },
  ['@parameter']= { fg = c.vscLightBlue, bg = 'NONE' },
  ['@parameter.reference']= { fg = c.vscLightBlue, bg = 'NONE' },
  ['@method']= { fg = c.vscYellow, bg = 'NONE' },
  ['@field']= { fg = c.vscLightBlue, bg = 'NONE' },
  ['@property']= { fg = c.vscLightBlue, bg = 'NONE' },
  ['@constructor']= { fg = c.vscBlueGreen, bg = 'NONE' },
  ['@conditional']= { fg = c.vscPink, bg = 'NONE' },
  ['@repeat']= { fg = c.vscPink, bg = 'NONE' },
  ['@label']= { fg = c.vscLightBlue, bg = 'NONE' },
  ['@keyword']= { fg = c.vscPink, bg = 'NONE' },
  ['@keyword.function']= { fg = c.vscBlue, bg = 'NONE' },
  ['@keyword.operator']= { fg = c.vscBlue, bg = 'NONE' },
  ['@operator']= { fg = c.vscFront, bg = 'NONE' },
  ['@exception']= { fg = c.vscPink, bg = 'NONE' },
  ['@type']= { fg = c.vsType, bg = 'NONE' },
  ['@type.builtin']= { fg = c.vsType, bg = 'NONE' },
  ['@type.qualifier']= { fg = c.vsType, bg = 'NONE' },
  ['@storageClass']= { fg = c.vsDebug, bg = 'NONE' },
  ['@structure']= { fg = c.vscLightBlue, bg = 'NONE' },
  ['@include']= { fg = c.vsDebug , bg = 'NONE' },
  ['@variable']= { fg = c.vsDebug, bg = 'NONE' },
  ['@variable.builtin']= { fg = c.vscLightBlue, bg = 'NONE' },
  ['@text']= { fg = c.vscFront, bg = 'NONE' },
  ['@text.underline']= { fg = c.vscYellowOrange, bg = 'NONE' },
  ['@tag']= { fg = c.vscBlue, bg = 'NONE' },
  ['@tag.delimiter']= { fg = c.vscGray, bg = 'NONE' },
  ['@tag.attribute']= { fg = c.vscLightBlue, bg = 'NONE' },
  ['@text.title']= { fg = isDark and c.vscBlue or c.vscYellowOrange, bold = true },
  ['@text.literal']= { fg = c.vscFront, bg = 'NONE' },
  ['markdown@text.literal']= { fg = c.vscOrange, bg = 'NONE' },
  ['markdown_inline@text.literal']= { fg = c.vscOrange, bg = 'NONE' },
  ['@text.emphasis']= { fg = c.vscFront, bg = 'NONE', italic = true },
  ['@text.strong']= { fg = isDark and c.vscBlue or c.vscViolet, bold = true },
  ['@text.uri']= { fg = c.vscFront, bg = 'NONE' },
  ['@textReference']= { fg = isDark and c.vscOrange or c.vscYellowOrange },
  ['@punctuation.delimiter']= { fg = c.vscFront, bg = 'NONE' },
  ['@stringEscape']= { fg = isDark and c.vscOrange or c.vscYellowOrange, bold = true },
  ['@namespace'] = { fg = "#FFF00", bg = 'NONE' },
  ['@text.note']= { fg = c.vscBlueGreen, bg = 'NONE', bold = true },
  ['@text.warning']= { fg = c.vscYellowOrange, bg = 'NONE', bold = true },
  ['@text.danger']= { fg = c.vscRed, bg = 'NONE', bold = true },
}
  highlight(syntax)
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
  hl(0, 'phpClass', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'phpFunction', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'phpInclude', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'phpUseClass', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'phpRegion', { fg = c.vsTypeGreen, bg = 'NONE' })
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
  hl(0, 'cssImportant', { fg = c.vsType, bg = 'NONE' })

  -- JavaScript
  hl(0, 'jsVariableDef', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsFuncArgs', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsFuncBlock', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsRegexpString', { fg = c.vscLightRed, bg = 'NONE' })
  hl(0, 'jsThis', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'jsOperatorKeyword', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'jsDestructuringBlock', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsObjectKey', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsGlobalObjects', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'jsModuleKeyword', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'jsClassDefinition', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'jsClassKeyword', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'jsExtendsKeyword', { fg = c.vsType, bg = 'NONE' })
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
  hl(0, 'typescriptDocTags', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptDocComment', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptLogicSymbols', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptImport', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'typescriptBOM', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptVariableDeclaration', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptVariable', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptExport', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'typescriptAliasDeclaration', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptAliasKeyword', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptClassName', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptAccessibilityModifier', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptOperator', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptArrowFunc', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptMethodAccessor', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptMember', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'typescriptTypeReference', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptTemplateSB', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'typescriptArrowFuncArg', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptParamImpl', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptFuncComma', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptCastKeyword', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptCall', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptCase', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptReserved', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'typescriptDefault', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptDecorator', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'typescriptPredefinedType', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptClassHeritage', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptClassExtends', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptClassKeyword', { fg = c.vsType, bg = 'NONE' })
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
  hl(0, 'typescriptTypeParameter', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptEnumKeyword', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptEnum', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptLoopParen', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptParenExp', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptModule', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'typescriptAmbientDeclaration', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptFuncTypeArrow', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptInterfaceHeritage', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptInterfaceName', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptInterfaceKeyword', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptInterfaceExtends', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptGlobal', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'typescriptAsyncFuncKeyword', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptFuncKeyword', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'typescriptGlobalMethod', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'typescriptPromiseMethod', { fg = c.vscYellow, bg = 'NONE' })

  -- XML
  hl(0, 'xmlTag', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'xmlTagName', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'xmlEndTag', { fg = c.vsType, bg = 'NONE' })

  -- Ruby
  hl(0, 'rubyClassNameTag', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'rubyClassName', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'rubyModuleName', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'rubyConstant', { fg = c.vsTypeGreen, bg = 'NONE' })

  -- Golang
  hl(0, 'goPackage', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goImport', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goVar', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goConst', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goStatement', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'goType', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'goSignedInts', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'goUnsignedInts', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'goFloats', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'goComplexes', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'goBuiltins', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'goBoolean', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goPredefinedIdentifiers', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goTodo', { fg = c.vscGreen, bg = 'NONE' })
  hl(0, 'goDeclaration', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goDeclType', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goTypeDecl', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'goTypeName', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'goVarAssign', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'goVarDefs', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'goReceiver', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'goReceiverType', { fg = c.vscFront, bg = 'NONE' })
  hl(0, 'goFunctionCall', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'goMethodCall', { fg = c.vscYellow, bg = 'NONE' })
  hl(0, 'goSingleDecl', { fg = c.vscLightBlue, bg = 'NONE' })

  -- Python
  hl(0, 'pythonStatement', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'pythonOperator', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'pythonException', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'pythonExClass', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'pythonBuiltinObj', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'pythonBuiltinType', { fg = c.vsTypeGreen, bg = 'NONE' })
  hl(0, 'pythonBoolean', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'pythonNone', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'pythonTodo', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'pythonClassVar', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'pythonClassDef', { fg = c.vsTypeGreen, bg = 'NONE' })

  -- TeX
  hl(0, 'texStatement', { fg = c.vsType, bg = 'NONE' })
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
  hl(0, 'luaBuiltIn', { fg = c.vsType, bg = 'NONE' })

  -- SH
  hl(0, 'shDeref', { fg = c.vscLightBlue, bg = 'NONE' })
  hl(0, 'shVariable', { fg = c.vscLightBlue, bg = 'NONE' })

  -- SQL
  hl(0, 'sqlKeyword', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'sqlFunction', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'sqlOperator', { fg = c.vscPink, bg = 'NONE' })

  -- YAML
  hl(0, 'yamlKey', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'yamlConstant', { fg = c.vsType, bg = 'NONE' })

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
  hl(0, 'DiagnosticInfo', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'DiagnosticHint', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'DiagnosticUnderlineError', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscRed })
  hl(0, 'DiagnosticUnderlineWarn', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vscYellow })
  hl(0, 'DiagnosticUnderlineInfo', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vsType })
  hl(0, 'DiagnosticUnderlineHint', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.vsType })
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
  hl(0, 'DashboardHeader', { fg = c.vsType, bg = 'NONE' })
  hl(0, 'DashboardCenter', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'DashboardCenterIcon', { fg = c.vscYellowOrange, bg = 'NONE' })
  hl(0, 'DashboardShortCut', { fg = c.vscPink, bg = 'NONE' })
  hl(0, 'DashboardFooter', { fg = c.vsType, bg = 'NONE', italic = true })

  if isDark then
    hl(0, 'NvimTreeFolderIcon', { fg = c.vsType, bg = 'NONE' })
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
