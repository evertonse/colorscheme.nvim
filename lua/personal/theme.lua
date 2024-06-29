local hl = vim.api.nvim_set_hl
local M = {}

M.set_highlights = function(opts)
    local vscode = require('colors.vscode_colors')
    local is_dark = true

    hl(0, 'Normal', { fg = vscode.vscFront, bg = vscode.vscBack })
    hl(0, 'ColorColumn', { fg = 'NONE', bg = vscode.vscCursorDarkDark })
    hl(0, 'Cursor', { fg = vscode.vscCursorDark, bg = vscode.vscCursorLight })
    hl(0, 'CursorLine', { bg = vscode.vscCursorDarkDark })
    hl(0, 'CursorColumn', { fg = 'NONE', bg = vscode.vscCursorDarkDark })
    hl(0, 'Directory', { fg = vscode.vscBlue, bg = vscode.vscBack })
    hl(0, 'DiffAdd', { fg = 'NONE', bg = vscode.vscDiffGreenLight })
    hl(0, 'DiffChange', { fg = 'NONE', bg = vscode.vscDiffRedDark })
    hl(0, 'DiffDelete', { fg = 'NONE', bg = vscode.vscDiffRedLight })
    hl(0, 'DiffText', { fg = 'NONE', bg = vscode.vscDiffRedLight })
    hl(0, 'EndOfBuffer', { fg = vscode.vscBack, bg = 'NONE' })
    hl(0, 'ErrorMsg', { fg = vscode.vscRed, bg = vscode.vscBack })
    hl(0, 'VertSplit', { fg = vscode.vscSplitDark, bg = vscode.vscBack })
    hl(0, 'WinSeparator', { link = 'VertSplit' })
    hl(0, 'Folded', { fg = 'NONE', bg = vscode.vscFoldBackground })
    hl(0, 'FoldColumn', { fg = vscode.vscLineNumber, bg = vscode.vscBack })
    hl(0, 'SignColumn', { fg = 'NONE', bg = vscode.vscBack })
    hl(0, 'IncSearch', { fg = vscode.vscNone, bg = vscode.vscSearchCurrent })
    hl(0, 'LineNr', { fg = vscode.vscLineNumber, bg = vscode.vscBack })
    hl(0, 'CursorLineNr', { fg = vscode.vscPopupFront, bg = vscode.vscBack })
    hl(0, 'MatchParen', { fg = vscode.vscNone, bg = vscode.vscDimHighlight })
    hl(0, 'ModeMsg', { fg = vscode.vscFront, bg = vscode.vscLeftDark })
    hl(0, 'MoreMsg', { fg = vscode.vscFront, bg = vscode.vscLeftDark })
    hl(0, 'NonText', { fg = (is_dark and vscode.vscLineNumber or vscode.vscTabOther), bg = vscode.vscNone })
    hl(0, 'Pmenu', { fg = vscode.vscPopupFront, bg = vscode.vscPopupBack })
    hl(0, 'PmenuSel', { fg = is_dark and vscode.vscPopupFront or vscode.vscBack, bg = vscode.vscPopupHighlightBlue })
    hl(0, 'PmenuSbar', { fg = 'NONE', bg = vscode.vscPopupHighlightGray })
    hl(0, 'PmenuThumb', { fg = 'NONE', bg = vscode.vscPopupFront })
    hl(0, 'Question', { fg = vscode.vscBlue, bg = vscode.vscBack })
    hl(0, 'Search', { fg = vscode.vscNone, bg = vscode.vscSearch })
    hl(0, 'SpecialKey', { fg = vscode.vscBlue, bg = vscode.vscNone })
    hl(0, 'StatusLine', { fg = vscode.vscFront, bg = vscode.vscLeftMid })
    hl(0, 'StatusLineNC', { fg = vscode.vscFront, bg = opts.transparent and vscode.vscBack or vscode.vscLeftDark })
    hl(0, 'TabLine', { fg = vscode.vscFront, bg = vscode.vscTabOther })
    hl(0, 'TabLineFill', { fg = vscode.vscFront, bg = vscode.vscTabOutside })
    hl(0, 'TabLineSel', { fg = vscode.vscFront, bg = vscode.vscTabCurrent })
    hl(0, 'Title', { fg = vscode.vscNone, bg = vscode.vscNone, bold = true })
    hl(0, 'Visual', { fg = vscode.vscNone, bg = vscode.vscSelection })
    hl(0, 'VisualNOS', { fg = vscode.vscNone, bg = vscode.vscSelection })
    hl(0, 'WarningMsg', { fg = vscode.vscRed, bg = vscode.vscBack, bold = true })
    hl(0, 'WildMenu', { fg = vscode.vscNone, bg = vscode.vscSelection })
    hl(0, 'Comment', { fg = vscode.vscGreen, bg = 'NONE', italic = opts.italic_comments })
    hl(0, 'Constant', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'String', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'Character', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'Number', { fg = vscode.vscLightGreen, bg = 'NONE' })
    hl(0, 'Boolean', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'Float', { fg = vscode.vscLightGreen, bg = 'NONE' })
    hl(0, 'Identifier', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'Function', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'Statement', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Conditional', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Repeat', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Label', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Operator', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'Keyword', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Exception', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'PreProc', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Include', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Define', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Macro', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'Type', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'StorageClass', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'Structure', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'Typedef', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'Special', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'SpecialChar', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'Tag', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'Delimiter', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'SpecialComment', { fg = vscode.vscGreen, bg = 'NONE' })
    hl(0, 'Debug', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'Underlined', { fg = vscode.vscNone, bg = 'NONE', underline = true })
    hl(0, 'Conceal', { fg = vscode.vscFront, bg = vscode.vscBack })
    hl(0, 'Ignore', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'Error', { fg = vscode.vscRed, bg = vscode.vscBack, undercurl = true, sp = vscode.vscRed })
    hl(0, 'Todo', { fg = vscode.vscYellowOrange, bg = vscode.vscBack, bold = true })
    hl(0, 'SpellBad', { fg = 'NONE', undercurl = true, sp = vscode.vscRed })
    hl(0, 'SpellCap', { fg = 'NONE', undercurl = true, sp = vscode.vscYellow })
    hl(0, 'SpellRare', { fg = 'NONE', undercurl = true, sp = vscode.vscViolet })
    hl(0, 'SpellLocal', { fg = 'NONE', undercurl = true, sp = vscode.vscBlue })
    hl(0, 'Whitespace', { fg = is_dark and vscode.vscLineNumber or vscode.vscTabOther })
    hl(0, 'NormalFloat', { bg = vscode.vscPopupBack })
    hl(0, 'WinBar', { fg = vscode.vscFront, bg = vscode.vscBack, bold = true })
    hl(0, 'WinBarNc', { fg = vscode.vscFront, bg = vscode.vscBack })
    hl(0, 'QuickFixLine', { bold = true })

    -- Treesitter
    hl(0, '@error', { fg = vscode.vscRed, bg = 'NONE' }) -- Legacy
    hl(0, '@punctuation.bracket', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, '@punctuation.special', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, '@punctuation.delimiter', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, '@comment', { fg = vscode.vscGreen, bg = 'NONE', italic = opts.italic_comments })
    hl(0, '@comment.note', { fg = vscode.vscBlueGreen, bg = 'NONE', bold = true })
    hl(0, '@comment.warning', { fg = vscode.vscYellowOrange, bg = 'NONE', bold = true })
    hl(0, '@comment.error', { fg = vscode.vscRed, bg = 'NONE', bold = true })
    hl(0, '@constant', { fg = vscode.vscAccentBlue, bg = 'NONE' })
    hl(0, '@constant.builtin', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, '@constant.macro', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, '@string.regexp', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, '@string', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, '@character', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, '@number', { fg = vscode.vscLightGreen, bg = 'NONE' })
    hl(0, '@number.float', { fg = vscode.vscLightGreen, bg = 'NONE' })
    hl(0, '@boolean', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, '@annotation', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, '@attribute', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, '@attribute.builtin', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, '@module', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, '@function', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, '@function.builtin', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, '@function.macro', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, '@function.method', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, '@variable', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, '@variable.builtin', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, '@variable.parameter', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, '@variable.parameter.reference', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, '@variable.member', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, '@property', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, '@constructor', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, '@label', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, '@keyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, '@keyword.conditional', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, '@keyword.repeat', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, '@keyword.return', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, '@keyword.exception', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, '@keyword.import', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, '@operator', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, '@type', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, '@type.qualifier', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, '@structure', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, '@tag', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, '@tag.builtin', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, '@tag.delimiter', { fg = vscode.vscGray, bg = 'NONE' })
    hl(0, '@tag.attribute', { fg = vscode.vscLightBlue, bg = 'NONE' })

    hl(0, '@text', { fg = vscode.vscFront, bg = 'NONE' }) -- Legacy
    hl(0, '@markup.strong', { fg = is_dark and vscode.vscBlue or vscode.vscViolet, bold = true })
    hl(0, '@markup.italic', { fg = vscode.vscFront, bg = 'NONE', italic = true })
    hl(0, '@markup.underline', { fg = vscode.vscYellowOrange, bg = 'NONE', underline = true })
    hl(0, '@markup.strikethrough', { fg = vscode.vscFront, bg = 'NONE', strikethrough = true })
    hl(0, '@markup.heading', { fg = is_dark and vscode.vscBlue or vscode.vscYellowOrange, bold = true })
    hl(0, '@markup.raw', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, '@markup.raw.markdown', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, '@markup.raw.markdown_inline', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, '@markup.link.label', { fg = vscode.vscLightBlue, bg = 'NONE', underline = opts.underline_links })
    hl(0, '@markup.link.url', { fg = vscode.vscFront, bg = 'NONE', underline = opts.underline_links })
    hl(0, '@markup.list.checked', { link = 'Todo' })
    hl(0, '@markup.list.unchecked', { link = 'Todo' })
    hl(0, '@textReference', { fg = is_dark and vscode.vscOrange or vscode.vscYellowOrange })
    hl(0, '@stringEscape', { fg = is_dark and vscode.vscOrange or vscode.vscYellowOrange, bold = true })

    hl(0, '@diff.plus', { link = 'DiffAdd' })
    hl(0, '@diff.minus', { link = 'DiffDelete' })
    hl(0, '@diff.delta', { link = 'DiffChange' })

    -- LSP semantic tokens
    hl(0, '@type.builtin', { link = '@type' })
    hl(0, '@lsp.typemod.type.defaultLibrary', { link = '@type.builtin' })
    hl(0, '@lsp.type.type', { link = '@type' })
    hl(0, '@lsp.type.typeParameter', { link = '@type' })
    hl(0, '@lsp.type.macro', { link = '@constant' })
    hl(0, '@lsp.type.enumMember', { link = '@constant' })
    hl(0, '@lsp.typemod.variable.readonly', { link = '@constant' })
    hl(0, '@lsp.typemod.property.readonly', { link = '@constant' })
    hl(0, '@lsp.typemod.variable.constant', { link = '@constant' })
    hl(0, '@lsp.type.member', { link = '@function' })
    hl(0, '@lsp.type.keyword', { link = '@keyword' })
    hl(0, '@lsp.typemod.keyword.controlFlow', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, '@lsp.type.comment.c', { fg = vscode.vscDimHighlight, bg = 'NONE' })
    hl(0, '@lsp.type.comment.cpp', { fg = vscode.vscDimHighlight, bg = 'NONE' })
    hl(0, '@event', { link = 'Identifier' })
    hl(0, '@interface', { link = 'Identifier' })
    hl(0, '@modifier', { link = 'Identifier' })
    hl(0, '@regexp', { fg = vscode.vscRed, bg = 'NONE' })
    hl(0, '@decorator', { link = 'Identifier' })

    -- Markdown
    hl(0, 'markdownBold', { fg = is_dark and vscode.vscBlue or vscode.vscYellowOrange, bold = true })
    hl(0, 'markdownCode', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'markdownRule', { fg = is_dark and vscode.vscBlue or vscode.vscYellowOrange, bold = true })
    hl(0, 'markdownCodeDelimiter', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'markdownHeadingDelimiter', { fg = is_dark and vscode.vscBlue or vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'markdownFootnote', { fg = is_dark and vscode.vscOrange or vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'markdownFootnoteDefinition', { fg = is_dark and vscode.vscOrange or vscode.vscYellowOrange })
    hl(0, 'markdownUrl', { fg = vscode.vscFront, bg = 'NONE', underline = true })
    hl(0, 'markdownLinkText', { fg = is_dark and vscode.vscOrange or vscode.vscYellowOrange })
    hl(0, 'markdownEscape', { fg = is_dark and vscode.vscOrange or vscode.vscYellowOrange })

    -- Asciidoc
    hl(0, 'asciidocAttributeEntry', { fg = vscode.vscYellowOrange })
    hl(0, 'asciidocAttributeList', { fg = vscode.vscPink })
    hl(0, 'asciidocAttributeRef', { fg = vscode.vscYellowOrange })
    hl(0, 'asciidocHLabel', { fg = vscode.vscBlue, bold = true })
    hl(0, 'asciidocListingBlock', { fg = vscode.vscOrange })
    hl(0, 'asciidocMacroAttributes', { fg = vscode.vscYellowOrange })
    hl(0, 'asciidocOneLineTitle', { fg = vscode.vscBlue, bold = true })
    hl(0, 'asciidocPassthroughBlock', { fg = vscode.vscBlue })
    hl(0, 'asciidocQuotedMonospaced', { fg = vscode.vscOrange })
    hl(0, 'asciidocTriplePlusPassthrough', { fg = vscode.vscYellow })
    hl(0, 'asciidocMacro', { fg = vscode.vscPink })
    hl(0, 'asciidocAdmonition', { fg = vscode.vscOrange })
    hl(0, 'asciidocQuotedEmphasized', { fg = vscode.vscBlue, italic = true })
    hl(0, 'asciidocQuotedEmphasized2', { fg = vscode.vscBlue, italic = true })
    hl(0, 'asciidocQuotedEmphasizedItalic', { fg = vscode.vscBlue, italic = true })
    hl(0, 'asciidocBackslash', { link = 'Keyword' })
    hl(0, 'asciidocQuotedBold', { link = 'markdownBold' })
    hl(0, 'asciidocQuotedMonospaced2', { link = 'asciidocQuotedMonospaced' })
    hl(0, 'asciidocQuotedUnconstrainedBold', { link = 'asciidocQuotedBold' })
    hl(0, 'asciidocQuotedUnconstrainedEmphasized', { link = 'asciidocQuotedEmphasized' })
    hl(0, 'asciidocURL', { link = 'markdownUrl' })

    -- JSON
    hl(0, 'jsonKeyword', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsonEscape', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'jsonNull', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'jsonBoolean', { fg = vscode.vscBlue, bg = 'NONE' })

    -- HTML
    hl(0, 'htmlTag', { fg = vscode.vscGray, bg = 'NONE' })
    hl(0, 'htmlEndTag', { fg = vscode.vscGray, bg = 'NONE' })
    hl(0, 'htmlTagName', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'htmlSpecialTagName', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'htmlArg', { fg = vscode.vscLightBlue, bg = 'NONE' })

    -- PHP
    hl(0, 'phpStaticClasses', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'phpMethod', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'phpClass', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'phpFunction', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'phpInclude', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'phpUseClass', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'phpRegion', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'phpMethodsVar', { fg = vscode.vscLightBlue, bg = 'NONE' })

    -- CSS
    hl(0, 'cssBraces', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'cssInclude', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'cssTagName', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'cssClassName', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'cssPseudoClass', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'cssPseudoClassId', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'cssPseudoClassLang', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'cssIdentifier', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'cssProp', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'cssDefinition', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'cssAttr', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssAttrRegion', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssColor', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssFunction', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssFunctionName', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssVendor', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssValueNumber', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssValueLength', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssUnitDecorators', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'cssStyle', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'cssImportant', { fg = vscode.vscBlue, bg = 'NONE' })

    -- JavaScript
    hl(0, 'jsVariableDef', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsFuncArgs', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsFuncBlock', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsRegexpString', { fg = vscode.vscLightRed, bg = 'NONE' })
    hl(0, 'jsThis', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'jsOperatorKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'jsDestructuringBlock', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsObjectKey', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsGlobalObjects', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'jsModuleKeyword', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsClassDefinition', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'jsClassKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'jsExtendsKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'jsExportDefault', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'jsFuncCall', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'jsObjectValue', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsParen', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsObjectProp', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsIfElseBlock', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsParenIfElse', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsSpreadOperator', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'jsSpreadExpression', { fg = vscode.vscLightBlue, bg = 'NONE' })

    -- Typescript
    hl(0, 'typescriptLabel', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptExceptions', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptBraces', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'typescriptEndColons', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptParens', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'typescriptDocTags', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptDocComment', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptLogicSymbols', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptImport', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'typescriptBOM', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptVariableDeclaration', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptVariable', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptExport', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'typescriptAliasDeclaration', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptAliasKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptClassName', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptAccessibilityModifier', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptOperator', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptArrowFunc', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptMethodAccessor', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptMember', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'typescriptTypeReference', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptTemplateSB', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'typescriptArrowFuncArg', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptParamImpl', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptFuncComma', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptCastKeyword', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptCall', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptCase', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptReserved', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'typescriptDefault', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptDecorator', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'typescriptPredefinedType', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptClassHeritage', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptClassExtends', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptClassKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptBlock', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptDOMDocProp', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptTemplateSubstitution', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptClassBlock', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptFuncCallArg', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptIndexExpr', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptConditionalParen', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptArray', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'typescriptES6SetProp', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptObjectLiteral', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptTypeParameter', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptEnumKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptEnum', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptLoopParen', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptParenExp', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptModule', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'typescriptAmbientDeclaration', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptFuncTypeArrow', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptInterfaceHeritage', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptInterfaceName', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptInterfaceKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptInterfaceExtends', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptGlobal', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptAsyncFuncKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptFuncKeyword', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'typescriptGlobalMethod', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'typescriptPromiseMethod', { fg = vscode.vscYellow, bg = 'NONE' })

    -- XML
    hl(0, 'xmlTag', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'xmlTagName', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'xmlEndTag', { fg = vscode.vscBlue, bg = 'NONE' })

    -- Ruby
    hl(0, 'rubyClassNameTag', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'rubyClassName', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'rubyModuleName', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'rubyConstant', { fg = vscode.vscBlueGreen, bg = 'NONE' })

    -- Golang
    hl(0, 'goPackage', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goImport', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goVar', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goConst', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goStatement', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'goType', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'goSignedInts', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'goUnsignedInts', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'goFloats', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'goComplexes', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'goBuiltins', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'goBoolean', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goPredefinedIdentifiers', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goTodo', { fg = vscode.vscGreen, bg = 'NONE' })
    hl(0, 'goDeclaration', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goDeclType', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goTypeDecl', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'goTypeName', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'goVarAssign', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'goVarDefs', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'goReceiver', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'goReceiverType', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'goFunctionCall', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'goMethodCall', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'goSingleDecl', { fg = vscode.vscLightBlue, bg = 'NONE' })

    -- Python
    hl(0, 'pythonStatement', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'pythonOperator', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'pythonException', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'pythonExClass', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'pythonBuiltinObj', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'pythonBuiltinType', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'pythonBoolean', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'pythonNone', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'pythonTodo', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'pythonClassVar', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'pythonClassDef', { fg = vscode.vscBlueGreen, bg = 'NONE' })

    -- TeX
    hl(0, 'texStatement', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'texBeginEnd', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'texBeginEndName', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'texOption', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'texBeginEndModifier', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'texDocType', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'texDocTypeArgs', { fg = vscode.vscLightBlue, bg = 'NONE' })

    -- Git
    hl(0, 'gitcommitHeader', { fg = vscode.vscGray, bg = 'NONE' })
    hl(0, 'gitcommitOnBranch', { fg = vscode.vscGray, bg = 'NONE' })
    hl(0, 'gitcommitBranch', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'gitcommitComment', { fg = vscode.vscGray, bg = 'NONE' })
    hl(0, 'gitcommitSelectedType', { fg = vscode.vscGreen, bg = 'NONE' })
    hl(0, 'gitcommitSelectedFile', { fg = vscode.vscGreen, bg = 'NONE' })
    hl(0, 'gitcommitDiscardedType', { fg = vscode.vscRed, bg = 'NONE' })
    hl(0, 'gitcommitDiscardedFile', { fg = vscode.vscRed, bg = 'NONE' })
    hl(0, 'gitcommitOverflow', { fg = vscode.vscRed, bg = 'NONE' })
    hl(0, 'gitcommitSummary', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'gitcommitBlank', { fg = vscode.vscPink, bg = 'NONE' })

    -- Lua
    hl(0, 'luaFuncCall', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'luaFuncArgName', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'luaFuncKeyword', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'luaLocal', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'luaBuiltIn', { fg = vscode.vscBlue, bg = 'NONE' })

    -- SH
    hl(0, 'shDeref', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'shVariable', { fg = vscode.vscLightBlue, bg = 'NONE' })

    -- SQL
    hl(0, 'sqlKeyword', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'sqlFunction', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'sqlOperator', { fg = vscode.vscPink, bg = 'NONE' })

    -- YAML
    hl(0, 'yamlKey', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'yamlConstant', { fg = vscode.vscBlue, bg = 'NONE' })

    -- Gitgutter
    hl(0, 'GitGutterAdd', { fg = vscode.vscGreen, bg = 'NONE' })
    hl(0, 'GitGutterChange', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'GitGutterDelete', { fg = vscode.vscRed, bg = 'NONE' })

    -- Git Signs
    hl(0, 'GitSignsAdd', { fg = vscode.vscGreen, bg = 'NONE' })
    hl(0, 'GitSignsChange', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'GitSignsDelete', { fg = vscode.vscRed, bg = 'NONE' })
    hl(0, 'GitSignsAddLn', { fg = vscode.vscBack, bg = vscode.vscGreen })
    hl(0, 'GitSignsChangeLn', { fg = vscode.vscBack, bg = vscode.vscYellow })
    hl(0, 'GitSignsDeleteLn', { fg = vscode.vscBack, bg = vscode.vscRed })

    -- NvimTree
    hl(0, 'NvimTreeRootFolder', { fg = vscode.vscFront, bg = 'NONE', bold = true })
    hl(0, 'NvimTreeGitDirty', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'NvimTreeGitNew', { fg = vscode.vscGreen, bg = 'NONE' })
    hl(0, 'NvimTreeImageFile', { fg = vscode.vscViolet, bg = 'NONE' })
    hl(0, 'NvimTreeEmptyFolderName', { fg = vscode.vscGray, bg = 'NONE' })
    hl(0, 'NvimTreeFolderName', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'NvimTreeSpecialFile', { fg = vscode.vscPink, bg = 'NONE', underline = true })
    hl(
        0,
        'NvimTreeNormal',
        { fg = vscode.vscFront, bg = opts.disable_nvimtree_bg and vscode.vscBack or vscode.vscLeftDark }
    )
    hl(
        0,
        'NvimTreeCursorLine',
        { fg = 'NONE', bg = opts.disable_nvimtree_bg and vscode.vscCursorDarkDark or vscode.vscLeftMid }
    )
    hl(
        0,
        'NvimTreeVertSplit',
        { fg = opts.disable_nvimtree_bg and vscode.vscSplitDark or vscode.vscBack, bg = vscode.vscBack }
    )
    hl(0, 'NvimTreeEndOfBuffer', { fg = opts.disable_nvimtree_bg and vscode.vscCursorDarkDark or vscode.vscLeftDark })
    hl(
        0,
        'NvimTreeOpenedFolderName',
        { fg = 'NONE', bg = opts.disable_nvimtree_bg and vscode.vscCursorDarkDark or vscode.vscLeftDark }
    )
    hl(0, 'NvimTreeGitRenamed', { fg = vscode.vscGitRenamed, bg = 'NONE' })
    hl(0, 'NvimTreeGitIgnored', { fg = vscode.vscGitIgnored, bg = 'NONE' })
    hl(0, 'NvimTreeGitDeleted', { fg = vscode.vscGitDeleted, bg = 'NONE' })
    hl(0, 'NvimTreeGitStaged', { fg = vscode.vscGitStageModified, bg = 'NONE' })
    hl(0, 'NvimTreeGitMerge', { fg = vscode.vscGitUntracked, bg = 'NONE' })
    hl(0, 'NvimTreeGitDirty', { fg = vscode.vscGitModified, bg = 'NONE' })
    hl(0, 'NvimTreeGitNew', { fg = vscode.vscGitAdded, bg = 'NONE' })

    -- Bufferline
    hl(0, 'BufferLineIndicatorSelected', { fg = vscode.vscLeftDark, bg = 'NONE' })
    hl(0, 'BufferLineFill', { fg = 'NONE', bg = opts.transparent and vscode.vscBack or vscode.vscLeftDark })

    -- BarBar
    hl(0, 'BufferCurrent', { fg = vscode.vscFront, bg = vscode.vscTabCurrent })
    hl(0, 'BufferCurrentIndex', { fg = vscode.vscFront, bg = vscode.vscTabCurrent })
    hl(0, 'BufferCurrentMod', { fg = vscode.vscYellowOrange, bg = vscode.vscTabCurrent })
    hl(0, 'BufferCurrentSign', { fg = vscode.vscFront, bg = vscode.vscTabCurrent })
    hl(0, 'BufferCurrentTarget', { fg = vscode.vscRed, bg = vscode.vscTabCurrent })
    hl(0, 'BufferVisible', { fg = vscode.vscGray, bg = vscode.vscTabCurrent })
    hl(0, 'BufferVisibleIndex', { fg = vscode.vscGray, bg = vscode.vscTabCurrent })
    hl(0, 'BufferVisibleMod', { fg = vscode.vscYellowOrange, bg = vscode.vscTabCurrent })
    hl(0, 'BufferVisibleSign', { fg = vscode.vscGray, bg = vscode.vscTabCurrent })
    hl(0, 'BufferVisibleTarget', { fg = vscode.vscRed, bg = vscode.vscTabCurrent })
    hl(0, 'BufferInactive', { fg = vscode.vscGray, bg = vscode.vscTabOther })
    hl(0, 'BufferInactiveIndex', { fg = vscode.vscGray, bg = vscode.vscTabOther })
    hl(0, 'BufferInactiveMod', { fg = vscode.vscYellowOrange, bg = vscode.vscTabOther })
    hl(0, 'BufferInactiveSign', { fg = vscode.vscGray, bg = vscode.vscTabOther })
    hl(0, 'BufferInactiveTarget', { fg = vscode.vscRed, bg = vscode.vscTabOther })
    hl(0, 'BufferTabpage', { fg = vscode.vscFront, bg = vscode.vscTabOther })
    hl(0, 'BufferTabpageFill', { fg = vscode.vscFront, bg = vscode.vscTabOther })
    hl(0, 'BufferTabpages', { fg = vscode.vscFront, bg = vscode.vscTabOther })
    hl(0, 'BufferTabpagesFill', { fg = vscode.vscFront, bg = vscode.vscTabOther })

    -- IndentBlankLine
    hl(0, 'IndentBlanklineContextChar', { fg = vscode.vscContextCurrent, bg = 'NONE', nocombine = true })
    hl(
        0,
        'IndentBlanklineContextStart',
        { sp = vscode.vscContextCurrent, bg = 'NONE', nocombine = true, underline = true }
    )
    hl(0, 'IndentBlanklineChar', { fg = vscode.vscContext, bg = 'NONE', nocombine = true })
    hl(0, 'IndentBlanklineSpaceChar', { fg = vscode.vscContext, bg = 'NONE', nocombine = true })
    hl(0, 'IndentBlanklineSpaceCharBlankline', { fg = vscode.vscContext, bg = 'NONE', nocombine = true })

    -- Neotest
    hl(0, 'NeotestAdapterName', { fg = vscode.vscFront, bold = true })
    hl(0, 'NeotestDir', { fg = vscode.vscBlue })
    hl(0, 'NeotestExpandMarker', { fg = vscode.vscDimHighlight })
    hl(0, 'NeotestFailed', { fg = vscode.vscRed })
    hl(0, 'NeotestFile', { fg = vscode.vscBlue })
    hl(0, 'NeotestFocused', { bold = true })
    hl(0, 'NeotestIndent', { fg = vscode.vscDimHighlight })
    hl(0, 'NeotestMarked', { fg = vscode.vscYellowOrange, bold = true })
    hl(0, 'NeotestNamespace', { fg = vscode.vscPink })
    hl(0, 'NeotestPassed', { fg = vscode.vscBlueGreen })
    hl(0, 'NeotestRunning', { fg = vscode.vscDarkYellow })
    hl(0, 'NeotestSkipped', { fg = vscode.vscBlue })
    hl(0, 'NeotestTarget', { fg = vscode.vscLightRed })
    hl(0, 'NeotestWatching', { fg = vscode.vscDarkYellow })
    hl(0, 'NeotestWinSelect', { fg = vscode.vscBlue, bold = true })

    -- LSP
    hl(0, 'DiagnosticOk', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'DiagnosticError', { fg = vscode.vscRed, bg = 'NONE' })
    hl(0, 'DiagnosticWarn', { fg = vscode.vscYellow, bg = 'NONE' })
    hl(0, 'DiagnosticInfo', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'DiagnosticHint', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'DiagnosticUnnecessary', { fg = vscode.vscDisabledBlue, bg = 'NONE' })
    hl(0, 'DiagnosticUnderlineError', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vscode.vscRed })
    hl(0, 'DiagnosticUnderlineWarn', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vscode.vscYellow })
    hl(0, 'DiagnosticUnderlineInfo', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vscode.vscBlue })
    hl(0, 'DiagnosticUnderlineHint', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vscode.vscBlue })
    hl(
        0,
        'LspReferenceText',
        { fg = 'NONE', bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue }
    )
    hl(
        0,
        'LspReferenceRead',
        { fg = 'NONE', bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue }
    )
    hl(
        0,
        'LspReferenceWrite',
        { fg = 'NONE', bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue }
    )

    -- Trouble
    hl(0, 'TroubleNormal', { link = 'Normal' })
    hl(0, 'TroubleNormalNC', { link = 'Normal' })

    -- COC.nvim
    hl(
        0,
        'CocHighlightText',
        { fg = 'NONE', bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue }
    )
    hl(
        0,
        'CocHighlightRead',
        { fg = 'NONE', bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue }
    )
    hl(
        0,
        'CocHighlightWrite',
        { fg = 'NONE', bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue }
    )

    -- Nvim compe
    hl(0, 'CmpItemKindVariable', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'CmpItemKindInterface', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'CmpItemKindText', { fg = vscode.vscLightBlue, bg = 'NONE' })
    hl(0, 'CmpItemKindFunction', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'CmpItemKindMethod', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'CmpItemKindKeyword', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'CmpItemKindProperty', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'CmpItemKindUnit', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'CmpItemKindConstructor', { fg = vscode.vscUiOrange, bg = 'NONE' })
    hl(0, 'CmpItemMenu', { fg = vscode.vscPopupFront, bg = 'NONE' })
    hl(0, 'CmpItemAbbr', { fg = vscode.vscFront, bg = 'NONE' })
    hl(0, 'CmpItemAbbrDeprecated', { fg = vscode.vscCursorDark, bg = vscode.vscPopupBack, strikethrough = true })
    hl(0, 'CmpItemAbbrMatch', { fg = is_dark and vscode.vscMediumBlue or vscode.vscDarkBlue, bg = 'NONE', bold = true })
    hl(
        0,
        'CmpItemAbbrMatchFuzzy',
        { fg = is_dark and vscode.vscMediumBlue or vscode.vscDarkBlue, bg = 'NONE', bold = true }
    )

    -- HiPhish/rainbow-delimiters.nvim
    hl(0, 'RainbowDelimiterRed', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'RainbowDelimiterOrange', { fg = vscode.vscOrange, bg = 'NONE' })
    hl(0, 'RainbowDelimiterYellow', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'RainbowDelimiterGreen', { fg = vscode.vscGreen, bg = 'NONE' })
    hl(0, 'RainbowDelimiterCyan', { fg = vscode.vscBlueGreen, bg = 'NONE' })
    hl(0, 'RainbowDelimiterBlue', { fg = vscode.vscMediumBlue, bg = 'NONE' })
    hl(0, 'RainbowDelimiterViolet', { fg = vscode.vscViolet, bg = 'NONE' })

    -- rcarriga/nvim-dap-ui
    -- Source: https://github.com/rcarriga/nvim-dap-ui/blob/master/lua/dapui/config/highlights.lua
    hl(0, 'DapUIBreakpointsCurrentLine', { fg = vscode.vscBlueGreen, bold = true })
    hl(0, 'DapUIBreakpointsDisabledLine', { fg = vscode.vscDimHighlight })
    hl(0, 'DapUIBreakpointsInfo', { fg = vscode.vscBlueGreen })
    hl(0, 'DapUIBreakpointsLine', { fg = vscode.vscPink })
    hl(0, 'DapUIBreakpointsPath', { fg = vscode.vscPink })
    hl(0, 'DapUICurrentFrameName', { fg = vscode.vscBlueGreen, bold = true })
    hl(0, 'DapUIDecoration', { fg = vscode.vscPink })
    hl(0, 'DapUIFloatBorder', { fg = vscode.vscPink })
    hl(0, 'DapUILineNumber', { fg = vscode.vscPink })
    hl(0, 'DapUIModifiedValue', { fg = vscode.vscPink, bold = true })
    hl(0, 'DapUIPlayPause', { fg = vscode.vscBlueGreen })
    hl(0, 'DapUIPlayPauseNC', { fg = vscode.vscBlueGreen })
    hl(0, 'DapUIRestart', { fg = vscode.vscBlueGreen })
    hl(0, 'DapUIRestartNC', { fg = vscode.vscBlueGreen })
    hl(0, 'DapUIScope', { fg = vscode.vscPink })
    hl(0, 'DapUISource', { fg = vscode.vscMediumBlue })
    hl(0, 'DapUIStepBack', { fg = vscode.vscPink })
    hl(0, 'DapUIStepBackNC', { fg = vscode.vscPink })
    hl(0, 'DapUIStepInto', { fg = vscode.vscPink })
    hl(0, 'DapUIStepIntoNC', { fg = vscode.vscPink })
    hl(0, 'DapUIStepOut', { fg = vscode.vscPink })
    hl(0, 'DapUIStepOutNC', { fg = vscode.vscPink })
    hl(0, 'DapUIStepOver', { fg = vscode.vscPink })
    hl(0, 'DapUIStepOverNC', { fg = vscode.vscPink })
    hl(0, 'DapUIStop', { fg = vscode.vscRed })
    hl(0, 'DapUIStopNC', { fg = vscode.vscRed })
    hl(0, 'DapUIStoppedThread', { fg = vscode.vscPink })
    hl(0, 'DapUIThread', { fg = vscode.vscBlueGreen })
    hl(0, 'DapUIType', { fg = vscode.vscPink })
    hl(0, 'DapUIUnavailable', { fg = vscode.vscDimHighlight })
    hl(0, 'DapUIUnavailableNC', { fg = vscode.vscDimHighlight })
    hl(0, 'DapUIWatchesEmpty', { fg = vscode.vscDimHighlight })
    hl(0, 'DapUIWatchesError', { fg = vscode.vscRed })
    hl(0, 'DapUIWatchesValue', { fg = vscode.vscBlueGreen })
    hl(0, 'DapUIWinSelect', { fg = vscode.vscPink, bold = true })

    -- Dashboard
    hl(0, 'DashboardHeader', { fg = vscode.vscBlue, bg = 'NONE' })
    hl(0, 'DashboardDesc', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'DashboardIcon', { fg = vscode.vscYellowOrange, bg = 'NONE' })
    hl(0, 'DashboardShortCut', { fg = vscode.vscPink, bg = 'NONE' })
    hl(0, 'DashboardKey', { fg = vscode.vscWhite, bg = 'NONE' })
    hl(0, 'DashboardFooter', { fg = vscode.vscBlue, bg = 'NONE', italic = true })

    -- Illuminate
    hl(0, 'illuminatedWord', { bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue })
    hl(0, 'illuminatedCurWord', { bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue })
    hl(0, 'IlluminatedWordText', { bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue })
    hl(0, 'IlluminatedWordRead', { bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue })
    hl(
        0,
        'IlluminatedWordWrite',
        { bg = is_dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue }
    )

    -- mini.statusline
    hl(0, 'MiniStatuslineModeNormal', { bg = vscode.vscLeftDark, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineModeInsert', { bg = vscode.vscLeftDark, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineModeVisual', { bg = vscode.vscLeftDark, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineModeReplace', { bg = vscode.vscLeftDark, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineModeCommand', { bg = vscode.vscLeftDark, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineModeOther', { bg = vscode.vscLeftDark, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineDevinfo', { bg = vscode.vscLeftDark, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineFilename', { bg = vscode.vscLeftMid, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineFileinfo', { bg = vscode.vscLeftLight, fg = vscode.vscFront })
    hl(0, 'MiniStatuslineInactive', { bg = vscode.vscLeftDark, fg = vscode.vscFront })

    -- NeogitOrg/neogit
    if is_dark then
        hl(0, 'NeogitDiffAdd', { fg = vscode.vscGitAdded, bg = vscode.vscDiffGreenDark })
        hl(0, 'NeogitDiffAddHighlight', { fg = vscode.vscGitAdded, bg = vscode.vscDiffGreenLight })
        hl(0, 'NeogitDiffContext', { fg = vscode.vscPopupFront, bg = vscode.vscLeftDark })
        hl(0, 'NeogitDiffContextHighlight', { fg = vscode.vscPopupFront, bg = vscode.vscLeftMid })
        hl(0, 'NeogitDiffDelete', { fg = vscode.vscGitDeleted, bg = vscode.vscDiffRedDark })
        hl(0, 'NeogitDiffDeleteHighlight', { fg = vscode.vscGitDeleted, bg = vscode.vscDiffRedLight })
        hl(0, 'NeogitDiffHeader', { fg = vscode.vscSplitLight, bg = vscode.vscBack })
        hl(0, 'NeogitDiffHeaderHighlight', { fg = vscode.vscSplitLight, bg = vscode.vscBack })
        hl(0, 'NeogitHunkHeader', { fg = vscode.vscGitModified, bg = vscode.vscLeftDark })
        hl(0, 'NeogitHunkHeaderHighlight', { fg = vscode.vscGitModified, bg = vscode.vscLeftMid })
    else
        hl(0, 'NeogitDiffAdd', { fg = vscode.vscGitAdded, bg = vscode.vscDiffGreenLight })
        hl(0, 'NeogitDiffAddHighlight', { fg = vscode.vscGitAdded, bg = vscode.vscDiffGreenDark })
        hl(0, 'NeogitDiffContext', { fg = vscode.vscPopupFront, bg = vscode.vscLeftMid })
        hl(0, 'NeogitDiffContextHighlight', { fg = vscode.vscPopupFront, bg = vscode.vscLeftDark })
        hl(0, 'NeogitDiffDelete', { fg = vscode.vscGitDeleted, bg = vscode.vscDiffRedLight })
        hl(0, 'NeogitDiffDeleteHighlight', { fg = vscode.vscGitDeleted, bg = vscode.vscDiffRedDark })
        hl(0, 'NeogitDiffHeader', { fg = vscode.vscSplitLight, bg = vscode.vscBack })
        hl(0, 'NeogitDiffHeaderHighlight', { fg = vscode.vscSplitLight, bg = vscode.vscBack })
        hl(0, 'NeogitHunkHeader', { fg = vscode.vscGitModified, bg = vscode.vscLeftMid })
        hl(0, 'NeogitHunkHeaderHighlight', { fg = vscode.vscGitModified, bg = vscode.vscLeftDark })
    end

    if is_dark then
        hl(0, 'NvimTreeFolderIcon', { fg = vscode.vscBlue, bg = 'NONE' })
        hl(0, 'NvimTreeIndentMarker', { fg = vscode.vscLineNumber, bg = 'NONE' })

        hl(0, 'LspFloatWinNormal', { fg = vscode.vscFront, bg = 'NONE' })
        hl(0, 'LspFloatWinBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspInfoBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaHoverBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaSignatureHelpBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaCodeActionBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaDefPreviewBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspLinesDiagBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaRenameBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaBorderTitle', { fg = vscode.vscCursorDark, bg = 'NONE' })
        hl(0, 'LSPSagaDiagnosticTruncateLine', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaDiagnosticBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaDiagnosticBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaShTruncateLine', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaShTruncateLine', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaDocTruncateLine', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaRenameBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaLspFinderBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })

        hl(0, 'TelescopePromptBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'TelescopeResultsBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'TelescopePreviewBorder', { fg = vscode.vscLineNumber, bg = 'NONE' })
        hl(0, 'TelescopeNormal', { fg = vscode.vscFront, bg = 'NONE' })
        hl(0, 'TelescopeSelection', { fg = vscode.vscFront, bg = vscode.vscPopupHighlightBlue })
        hl(0, 'TelescopeMultiSelection', { fg = vscode.vscFront, bg = vscode.vscPopupHighlightBlue })
        hl(0, 'TelescopeMatching', { fg = vscode.vscMediumBlue, bg = 'NONE', bold = true })
        hl(0, 'TelescopePromptPrefix', { fg = vscode.vscFront, bg = 'NONE' })

        -- Debugging
        hl(0, 'debugPC', { bg = '#4C4C19' })

        -- symbols-outline
        -- white fg and lualine blue bg
        hl(0, 'FocusedSymbol', { fg = '#ffffff', bg = vscode.vscUiBlue })
        hl(0, 'SymbolsOutlineConnector', { fg = vscode.vscLineNumber, bg = 'NONE' })
    else
        hl(0, 'NvimTreeFolderIcon', { fg = vscode.vscDarkBlue, bg = 'NONE' })
        hl(0, 'NvimTreeIndentMarker', { fg = vscode.vscTabOther, bg = 'NONE' })

        hl(0, 'LspFloatWinNormal', { fg = vscode.vscFront, bg = 'NONE' })
        hl(0, 'LspFloatWinBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspInfoBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaHoverBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaSignatureHelpBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaCodeActionBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaDefPreviewBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspLinesDiagBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaRenameBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaBorderTitle', { fg = vscode.vscCursorDark, bg = 'NONE' })
        hl(0, 'LSPSagaDiagnosticTruncateLine', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaDiagnosticBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaDiagnosticBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaShTruncateLine', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaShTruncateLine', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaDocTruncateLine', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaRenameBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'LspSagaLspFinderBorder', { fg = vscode.vscTabOther, bg = 'NONE' })

        hl(0, 'TelescopePromptBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'TelescopeResultsBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'TelescopePreviewBorder', { fg = vscode.vscTabOther, bg = 'NONE' })
        hl(0, 'TelescopeNormal', { fg = vscode.vscFront, bg = 'NONE' })
        hl(0, 'TelescopeSelection', { fg = '#FFFFFF', bg = vscode.vscPopupHighlightBlue })
        hl(0, 'TelescopeMultiSelection', { fg = vscode.vscBack, bg = vscode.vscPopupHighlightBlue })
        hl(0, 'TelescopeMatching', { fg = 'orange', bg = 'NONE', bold = true, nil })
        hl(0, 'TelescopePromptPrefix', { fg = vscode.vscFront, bg = 'NONE' })

        -- Debugging
        hl(0, 'debugPC', { bg = '#FFFFBA' })

        -- COC.nvim
        hl(0, 'CocFloating', { fg = 'NONE', bg = vscode.vscPopupBack })
        hl(0, 'CocMenuSel', { fg = '#FFFFFF', bg = '#285EBA' })
        hl(0, 'CocSearch', { fg = '#2A64B9', bg = 'NONE' })

        -- Pmenu
        hl(0, 'Pmenu', { fg = 'NONE', bg = vscode.vscPopupBack })
        hl(0, 'PmenuSel', { fg = '#FFFFFF', bg = '#285EBA' })

        -- Copilot
        hl(0, 'CopilotSuggestion', { fg = vscode.vscGray, bg = 'NONE' })

        -- symbols-outline
        -- white fg and lualine blue bg
        hl(0, 'FocusedSymbol', { fg = vscode.vscBack, bg = '#AF00DB' })
        hl(0, 'SymbolsOutlineConnector', { fg = vscode.vscTabOther, bg = 'NONE' })

        local highlights = require('personal.highlight')
        for hl_group, hl_opts in pairs(highlights) do
            hl(0, hl_group, hl_opts)
        end
    end
end

M.link_highlights = function()
    -- Legacy groups for official git.vim and diff.vim syntax
    hl(0, 'diffAdded', { link = 'DiffAdd' })
    hl(0, 'diffChanged', { link = 'DiffChange' })
    hl(0, 'diffRemoved', { link = 'DiffDelete' })
    -- Legacy groups for treesitter
    hl(0, '@parameter', { link = '@variable.parameter' })
    hl(0, '@field', { link = '@variable.member' })
    hl(0, '@string.regex', { link = '@string.regexp' })
    hl(0, '@float', { link = '@number.float' })
    hl(0, '@namespace', { link = '@module' })
    hl(0, '@method', { link = '@function.method' })
    hl(0, '@field', { link = '@variable.member' })
    hl(0, '@conditional', { link = '@keyword.conditional' })
    hl(0, '@repeat', { link = '@keyword.repeat' })
    hl(0, '@exception', { link = '@keyword.exception' })
    hl(0, '@storageclass', { link = '@keyword.storage' })
    hl(0, '@include', { link = '@keyword.import' })
    hl(0, '@text.strong', { link = '@markup.strong' })
    hl(0, '@text.underline', { link = '@markup.underline' })
    hl(0, '@text.emphasis', { link = '@markup.italic' })
    hl(0, '@text.strike', { link = '@markup.strikethrough' })
    hl(0, '@text.title', { link = '@markup.heading' })
    hl(0, '@text.uri', { link = '@markup.link.url' })
    hl(0, '@text.literal', { link = '@markup.raw' })
    hl(0, '@text.note', { link = '@comment.note' })
    hl(0, '@text.warning', { link = '@comment.warning' })
    hl(0, '@text.danger', { link = '@comment.error' })
    hl(0, '@text.diff.add', { link = '@diff.plus' })
    hl(0, '@text.diff.delete', { link = '@diff.minus' })
    -- Nvim compe
    hl(0, 'CompeDocumentation', { link = 'Pmenu' })
    hl(0, 'CompeDocumentationBorder', { link = 'Pmenu' })
    hl(0, 'CmpItemKind', { link = 'Pmenu' })
    hl(0, 'CmpItemKindClass', { link = 'CmpItemKindConstructor' })
    hl(0, 'CmpItemKindModule', { link = 'CmpItemKindKeyword' })
    hl(0, 'CmpItemKindOperator', { link = '@operator' })
    hl(0, 'CmpItemKindReference', { link = '@variable.parameter.reference' })
    hl(0, 'CmpItemKindValue', { link = '@variable.member' })
    hl(0, 'CmpItemKindField', { link = '@variable.member' })
    hl(0, 'CmpItemKindEnum', { link = '@variable.member' })
    hl(0, 'CmpItemKindSnippet', { link = '@text' })
    hl(0, 'CmpItemKindColor', { link = 'cssColor' })
    hl(0, 'CmpItemKindFile', { link = '@text.uri' })
    hl(0, 'CmpItemKindFolder', { link = '@text.uri' })
    hl(0, 'CmpItemKindEvent', { link = '@constant' })
    hl(0, 'CmpItemKindEnumMember', { link = '@variable.member' })
    hl(0, 'CmpItemKindConstant', { link = '@constant' })
    hl(0, 'CmpItemKindStruct', { link = '@structure' })
    hl(0, 'CmpItemKindTypeParameter', { link = '@variable.parameter' })
end

return M
