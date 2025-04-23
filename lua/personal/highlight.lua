-- @important check https://github.com/NvChad/base46/blob/v2.0/lua/base46/integrations/tbline.lua
-- for better ideia of highlight groups
-- @imporant also check https://github.com/NvChad/ui/blob/v2.0/lua/nvchad_ui/tabufline/modules.lua for default config
-- of statusline and tabline
-- @important highlights https://github.com/folke/tokyonight.nvim/blob/284667adfff02b9a0adc65968c553c6096b543b6/lua/tokyonight/theme.lua#L182
-- @important lsp tutorial on nvim https://gist.github.com/swarn/fb37d9eefe1bc616c2a7e476c0bc0316
-- @example vim.api.nvim_set_['@lsp.type.parameter'] = { fg='Purple' },
-- NOTE: Best for plugins highlight info: https://github.com/NvChad/base46/tree/v2.5/lua/base46/integrations
-- TODO: Make this transperant work with opts given by the user
-- TODO: use some sorta of .hls of darken or lighten function to degine the color scheme better
-- IMPORTANT TODO: Simplify the logic of everything here, by having just one place with higlight groups
-- DONE: Telescope result going in front of Telescope selection
-- Make a color into a class

-- By default, `FloatBorder` highlight is used, which links
-- to `WinSeparator` when not defined. It could also be

local c = require('palette')
local vscode = require('palette.vscode_colors')

local opts = require('personal.config').opts

-- Set transparent background

local M = {
    -- Made up groups
    Matching = { fg = c.text.ModifiedLight, bold = true },
    Directory = {
        fg = c.code.Method, --[[ bg = c.editor.Background ]]
    },
    Folder = { link = 'Directory' },
    Label = { fg = c.code.Label, bg = 'NONE' },

    ['DiffChange'] = { fg = 'NONE', sp = c.code.None, bg = c.editor.DiffRedDark },
    ['WinBar'] = { fg = vscode.vscFront, bg = vscode.vscBack, bold = true },
    ['WinBarNc'] = { fg = vscode.vscFront, bg = vscode.vscBack },
    ['QuickFixLine'] = { bold = true },

    -- Treesitter
    ['@error'] = { fg = vscode.vscRed, bg = 'NONE' }, -- Legac,
    ['@punctuation.delimiter'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['@comment.note'] = { fg = vscode.vscBlueGreen, bg = 'NONE', bold = true },
    ['@comment.warning'] = { fg = vscode.vscYellowOrange, bg = 'NONE', bold = true },
    ['@comment.error'] = { fg = vscode.vscRed, bg = 'NONE', bold = true },
    ['@constant.macro'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    --['@macro.cpp']           = { fg = c.code.Macro, bg = 'NONE' },
    ['@constant'] = { link = 'Constant' },
    ['@constant.macro.cpp'] = { link = '@constant' },
    ['@constant.macro.c'] = { link = '@constant' },
    --['@error']               = { fg = c.editor.Red, bg = 'NONE' },
    ['@punctuation.bracket'] = { fg = c.editor.Front, bg = 'NONE' },
    ['@punctuation.special'] = { fg = c.code.Punct, bg = 'NONE' },
    ['@punctuation.special.bash'] = { fg = c.code.Keyword, bg = 'NONE' },
    -- ['@punctuation.bracket'] = { fg = c.code.Normal, bg = 'NONE' },

    ['@constant.builtin'] = { fg = c.code.BuiltInConstant, bg = 'NONE' },
    ['@string.regexp'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['@string.special.url'] = { link = 'Type' },
    ['@annotation'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['@attribute'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['@attribute.builtin'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['@variable.parameter.reference'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['@tag'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['@tag.builtin'] = { fg = vscode.vscBlue, bg = 'NONE' },

    ['@text'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['@markup.strong'] = { fg = opts.dark and vscode.vscBlue or vscode.vscViolet, bold = true },
    ['@markup.italic'] = { fg = vscode.vscFront, bg = 'NONE', italic = true },
    ['@markup.underline'] = { fg = vscode.vscYellowOrange, bg = 'NONE', underline = true },
    ['@markup.strikethrough'] = { fg = vscode.vscFront, bg = 'NONE', strikethrough = true },
    ['@markup.heading.1.markdown'] = { fg = c.editor.YellowOrange or c.code.Normal, bold = true },
    ['@markup.heading.2.markdown'] = { fg = c.editor.DefaultLibraryFunction or c.code.Normal, bold = true },
    ['@markup.heading'] = { fg = c.code.Method or c.code.Normal, bold = true },
    ['@markup.raw'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['@markup.raw.markdown'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['@markup.raw.markdown_inline'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['@markup.link'] = { link = 'Conceal' },
    ['@markup.link.label'] = { fg = vscode.vscLightBlue, bg = 'NONE', underline = opts.underline_links },
    ['@markup.link.url'] = { fg = vscode.vscFront, bg = 'NONE', underline = opts.underline_links },
    ['@markup.list.checked'] = { link = 'Todo' },
    ['@markup.list.unchecked'] = { link = 'Todo' },
    ['@textReference'] = { fg = opts.dark and vscode.vscOrange or vscode.vscYellowOrange },
    ['@stringEscape'] = { fg = opts.dark and vscode.vscOrange or vscode.vscYellowOrange, bold = true },

    ['@diff.plus'] = { link = 'DiffAdd' },
    ['@diff.minus'] = { link = 'DiffDelete' },
    ['@diff.delta'] = { link = 'DiffChange' },

    -- LSP semantic tokens
    ['@lsp.typemod.type.defaultLibrary'] = { fg = c.code.DefaultLibraryType },
    ['@lsp.typemod.function.defaultLibrary'] = { fg = c.code.DefaultLibraryFunction },
    ['@lsp.type.interface'] = { fg = c.code.InterfaceType },

    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.typeParameter'] = { link = '@type' },
    ['@lsp.type.macro'] = { link = '@constant' },
    ['@lsp.type.macro.c'] = { fg = c.code.MacroFunction },
    ['@lsp.type.enumMember'] = { link = '@constant' },

    ['@lsp.type.variable'] = { link = 'Variable' },
    -- ['@lsp.mod.readonly'] = { link = '@constant' },
    ['@lsp.typemod.variable.readonly'] = { link = '@constant' },
    ['@lsp.typemod.property.readonly'] = { link = '@constant' },
    ['@lsp.typemod.variable.constant'] = { link = '@constant' },
    ['@lsp.typemod.function.readonly'] = { link = '@function' },

    ['@lsp.type.member'] = { link = '@function' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ['@lsp.typemod.keyword.controlFlow'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['@event'] = { link = 'Identifier' },
    ['@interface'] = { link = 'Identifier' },
    ['@modifier'] = { link = 'Identifier' },
    ['@regexp'] = { fg = vscode.vscRed, bg = 'NONE' },
    ['@decorator'] = { link = 'Identifier' },

    -- Markdown
    ['markdownBold'] = { fg = opts.dark and vscode.vscBlue or vscode.vscYellowOrange, bold = true },
    ['markdownCode'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['markdownRule'] = { fg = opts.dark and vscode.vscBlue or vscode.vscYellowOrange, bold = true },
    ['markdownCodeDelimiter'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['markdownHeadingDelimiter'] = { fg = opts.dark and vscode.vscBlue or vscode.vscYellowOrange, bg = 'NONE' },
    ['markdownFootnote'] = { fg = opts.dark and vscode.vscOrange or vscode.vscYellowOrange, bg = 'NONE' },
    ['markdownFootnoteDefinition'] = { fg = opts.dark and vscode.vscOrange or vscode.vscYellowOrange },
    ['markdownUrl'] = { fg = vscode.vscFront, bg = 'NONE', underline = true },
    ['markdownLinkText'] = { fg = opts.dark and vscode.vscOrange or vscode.vscYellowOrange },
    ['markdownEscape'] = { fg = opts.dark and vscode.vscOrange or vscode.vscYellowOrange },

    -- Asciidoc
    ['asciidocAttributeEntry'] = { fg = vscode.vscYellowOrange },
    ['asciidocAttributeList'] = { fg = vscode.vscPink },
    ['asciidocAttributeRef'] = { fg = vscode.vscYellowOrange },
    ['asciidocHLabel'] = { fg = vscode.vscBlue, bold = true },
    ['asciidocListingBlock'] = { fg = vscode.vscOrange },
    ['asciidocMacroAttributes'] = { fg = vscode.vscYellowOrange },
    ['asciidocOneLineTitle'] = { fg = vscode.vscBlue, bold = true },
    ['asciidocPassthroughBlock'] = { fg = vscode.vscBlue },
    ['asciidocQuotedMonospaced'] = { fg = vscode.vscOrange },
    ['asciidocTriplePlusPassthrough'] = { fg = vscode.vscYellow },
    ['asciidocMacro'] = { fg = vscode.vscPink },
    ['asciidocAdmonition'] = { fg = vscode.vscOrange },
    ['asciidocQuotedEmphasized'] = { fg = vscode.vscBlue, italic = true },
    ['asciidocQuotedEmphasized2'] = { fg = vscode.vscBlue, italic = true },
    ['asciidocQuotedEmphasizedItalic'] = { fg = vscode.vscBlue, italic = true },
    ['asciidocBackslash'] = { link = 'Keyword' },
    ['asciidocQuotedBold'] = { link = 'markdownBold' },
    ['asciidocQuotedMonospaced2'] = { link = 'asciidocQuotedMonospaced' },
    ['asciidocQuotedUnconstrainedBold'] = { link = 'asciidocQuotedBold' },
    ['asciidocQuotedUnconstrainedEmphasized'] = { link = 'asciidocQuotedEmphasized' },
    ['asciidocURL'] = { link = 'markdownUrl' },

    -- JSON
    ['jsonKeyword'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsonEscape'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['jsonNull'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['jsonBoolean'] = { fg = vscode.vscBlue, bg = 'NONE' },

    -- HTML
    ['htmlTag'] = { fg = vscode.vscGray, bg = 'NONE' },
    ['htmlEndTag'] = { fg = vscode.vscGray, bg = 'NONE' },
    ['htmlTagName'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['htmlSpecialTagName'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['htmlArg'] = { fg = vscode.vscLightBlue, bg = 'NONE' },

    -- PHP
    ['phpStaticClasses'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['phpMethod'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['phpClass'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['phpFunction'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['phpInclude'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['phpUseClass'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['phpRegion'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['phpMethodsVar'] = { fg = vscode.vscLightBlue, bg = 'NONE' },

    -- CSS
    ['cssBraces'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['cssInclude'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['cssTagName'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['cssClassName'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['cssPseudoClass'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['cssPseudoClassId'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['cssPseudoClassLang'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['cssIdentifier'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['cssProp'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['cssDefinition'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['cssAttr'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssAttrRegion'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssColor'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssFunction'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssFunctionName'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssVendor'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssValueNumber'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssValueLength'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssUnitDecorators'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['cssStyle'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['cssImportant'] = { fg = vscode.vscBlue, bg = 'NONE' },

    -- Odin
    ['odinKeyword'] = { link = '@keyword' },
    ['odinTemplate'] = { link = '@type.builtin' },
    ['odinType'] = { link = '@type.builtin' },

    -- JavaScript
    ['jsVariableDef'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsFuncArgs'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsFuncBlock'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsRegexpString'] = { fg = vscode.vscLightRed, bg = 'NONE' },
    ['jsThis'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['jsOperatorKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['jsDestructuringBlock'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsObjectKey'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsGlobalObjects'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['jsModuleKeyword'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsClassDefinition'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['jsClassKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['jsExtendsKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['jsExportDefault'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['jsFuncCall'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['jsObjectValue'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsParen'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsObjectProp'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsIfElseBlock'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsParenIfElse'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsSpreadOperator'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['jsSpreadExpression'] = { fg = vscode.vscLightBlue, bg = 'NONE' },

    -- Typescript
    ['typescriptLabel'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptExceptions'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptBraces'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['typescriptEndColons'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptParens'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['typescriptDocTags'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptDocComment'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptLogicSymbols'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptImport'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['typescriptBOM'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptVariableDeclaration'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptVariable'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptExport'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['typescriptAliasDeclaration'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptAliasKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptClassName'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptAccessibilityModifier'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptOperator'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptArrowFunc'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptMethodAccessor'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptMember'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['typescriptTypeReference'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptTemplateSB'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['typescriptArrowFuncArg'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptParamImpl'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptFuncComma'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptCastKeyword'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptCall'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptCase'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptReserved'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['typescriptDefault'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptDecorator'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['typescriptPredefinedType'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptClassHeritage'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptClassExtends'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptClassKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptBlock'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptDOMDocProp'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptTemplateSubstitution'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptClassBlock'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptFuncCallArg'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptIndexExpr'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptConditionalParen'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptArray'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['typescriptES6SetProp'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptObjectLiteral'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptTypeParameter'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptEnumKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptEnum'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptLoopParen'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptParenExp'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptModule'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['typescriptAmbientDeclaration'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptFuncTypeArrow'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptInterfaceHeritage'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptInterfaceName'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptInterfaceKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptInterfaceExtends'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptGlobal'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['typescriptAsyncFuncKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptFuncKeyword'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['typescriptGlobalMethod'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['typescriptPromiseMethod'] = { fg = vscode.vscYellow, bg = 'NONE' },

    -- XML
    ['xmlTag'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['xmlTagName'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['xmlEndTag'] = { fg = vscode.vscBlue, bg = 'NONE' },

    -- Ruby
    ['rubyClassNameTag'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['rubyClassName'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['rubyModuleName'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['rubyConstant'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },

    -- Golang
    ['goPackage'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goImport'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goVar'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goConst'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goStatement'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['goType'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['goSignedInts'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['goUnsignedInts'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['goFloats'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['goComplexes'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['goBuiltins'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['goBoolean'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goPredefinedIdentifiers'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goTodo'] = { fg = vscode.vscGreen, bg = 'NONE' },
    ['goDeclaration'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goDeclType'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goTypeDecl'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['goTypeName'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['goVarAssign'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['goVarDefs'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['goReceiver'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['goReceiverType'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['goFunctionCall'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['goMethodCall'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['goSingleDecl'] = { fg = vscode.vscLightBlue, bg = 'NONE' },

    -- Python
    ['pythonStatement'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['pythonOperator'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['pythonException'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['pythonExClass'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['pythonBuiltinObj'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['pythonBuiltinType'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['pythonBoolean'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['pythonNone'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['pythonTodo'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['pythonClassVar'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['pythonClassDef'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },

    -- TeX
    ['texStatement'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['texBeginEnd'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['texBeginEndName'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['texOption'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['texBeginEndModifier'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['texDocType'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['texDocTypeArgs'] = { fg = vscode.vscLightBlue, bg = 'NONE' },

    -- Git
    ['gitcommitHeader'] = { fg = vscode.vscGray, bg = 'NONE' },
    ['gitcommitOnBranch'] = { fg = vscode.vscGray, bg = 'NONE' },
    ['gitcommitBranch'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['gitcommitComment'] = { fg = vscode.vscGray, bg = 'NONE' },
    ['gitcommitSelectedType'] = { fg = vscode.vscGreen, bg = 'NONE' },
    ['gitcommitSelectedFile'] = { fg = vscode.vscGreen, bg = 'NONE' },
    ['gitcommitDiscardedType'] = { fg = vscode.vscRed, bg = 'NONE' },
    ['gitcommitDiscardedFile'] = { fg = vscode.vscRed, bg = 'NONE' },
    ['gitcommitOverflow'] = { fg = vscode.vscRed, bg = 'NONE' },
    ['gitcommitSummary'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['gitcommitBlank'] = { fg = vscode.vscPink, bg = 'NONE' },

    -- Lua
    ['luaFuncCall'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['luaFuncArgName'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['luaFuncKeyword'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['luaLocal'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['luaBuiltIn'] = { fg = vscode.vscBlue, bg = 'NONE' },

    -- SH
    ['shDeref'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['shVariable'] = { fg = vscode.vscLightBlue, bg = 'NONE' },

    -- SQL
    ['sqlKeyword'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['sqlFunction'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['sqlOperator'] = { fg = vscode.vscPink, bg = 'NONE' },

    -- YAML
    ['yamlKey'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['yamlConstant'] = { fg = vscode.vscBlue, bg = 'NONE' },

    -- Gitgutter
    ['GitGutterAdd'] = { fg = vscode.vscGreen, bg = 'NONE' },
    ['GitGutterChange'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['GitGutterDelete'] = { fg = vscode.vscRed, bg = 'NONE' },

    -- Git Signs
    ['GitSignsAdd'] = { fg = vscode.vscGreen, bg = 'NONE' },
    ['GitSignsChange'] = { fg = vscode.vscYellow, bg = 'NONE' },
    ['GitSignsDelete'] = { fg = vscode.vscRed, bg = 'NONE' },
    ['GitSignsAddLn'] = { fg = vscode.vscBack, bg = vscode.vscGreen },
    ['GitSignsChangeLn'] = { fg = vscode.vscBack, bg = vscode.vscYellow },
    ['GitSignsDeleteLn'] = { fg = vscode.vscBack, bg = vscode.vscRed },

    -- NvimTree
    ['NvimTreeRootFolder'] = { fg = vscode.vscFront, bg = 'NONE', bold = true },
    ['NvimTreeGitNew'] = { fg = vscode.vscGreen, bg = 'NONE' },
    ['NvimTreeImageFile'] = { fg = vscode.vscViolet, bg = 'NONE' },
    ['NvimTreeEmptyFolderName'] = { fg = vscode.vscGray, bg = 'NONE' },
    ['NvimTreeFolderName'] = { link = 'Folder' },
    NvimTreeSpecialFile = {
        link = 'Normal',
        bold = true,
    },
    ['NvimTreeGitRenamed'] = { fg = vscode.vscGitRenamed, bg = 'NONE' },
    NvimTreeGitIgnored = { link = 'DiagnosticUnnecessary' },
    ['NvimTreeGitDeleted'] = { fg = vscode.vscGitDeleted, bg = 'NONE' },
    ['NvimTreeGitStaged'] = { fg = vscode.vscGitStageModified, bg = 'NONE' },
    ['NvimTreeGitMerge'] = { fg = vscode.vscGitUntracked, bg = 'NONE' },
    ['NvimTreeGitDirty'] = { fg = vscode.vscGitModified, bg = 'NONE' },

    -- Bufferline
    ['BufferLineIndicatorSelected'] = { fg = vscode.vscLeftDark, bg = 'NONE' },
    ['BufferLineFill'] = { fg = 'NONE', bg = opts.transparent and vscode.vscBack or vscode.vscLeftDark },

    -- BarBar
    ['BufferCurrent'] = { fg = vscode.vscFront, bg = vscode.vscTabCurrent },
    ['BufferCurrentIndex'] = { fg = vscode.vscFront, bg = vscode.vscTabCurrent },
    ['BufferCurrentMod'] = { fg = vscode.vscYellowOrange, bg = vscode.vscTabCurrent },
    ['BufferCurrentSign'] = { fg = vscode.vscFront, bg = vscode.vscTabCurrent },
    ['BufferCurrentTarget'] = { fg = vscode.vscRed, bg = vscode.vscTabCurrent },
    ['BufferVisible'] = { fg = vscode.vscGray, bg = vscode.vscTabCurrent },
    ['BufferVisibleIndex'] = { fg = vscode.vscGray, bg = vscode.vscTabCurrent },
    ['BufferVisibleMod'] = { fg = vscode.vscYellowOrange, bg = vscode.vscTabCurrent },
    ['BufferVisibleSign'] = { fg = vscode.vscGray, bg = vscode.vscTabCurrent },
    ['BufferVisibleTarget'] = { fg = vscode.vscRed, bg = vscode.vscTabCurrent },
    ['BufferInactive'] = { fg = vscode.vscGray, bg = vscode.vscTabOther },
    ['BufferInactiveIndex'] = { fg = vscode.vscGray, bg = vscode.vscTabOther },
    ['BufferInactiveMod'] = { fg = vscode.vscYellowOrange, bg = vscode.vscTabOther },
    ['BufferInactiveSign'] = { fg = vscode.vscGray, bg = vscode.vscTabOther },
    ['BufferInactiveTarget'] = { fg = vscode.vscRed, bg = vscode.vscTabOther },
    ['BufferTabpage'] = { fg = vscode.vscFront, bg = vscode.vscTabOther },
    ['BufferTabpageFill'] = { fg = vscode.vscFront, bg = vscode.vscTabOther },
    ['BufferTabpages'] = { fg = vscode.vscFront, bg = vscode.vscTabOther },
    ['BufferTabpagesFill'] = { fg = vscode.vscFront, bg = vscode.vscTabOther },

    -- IndentBlankLine
    ['IndentBlanklineContextChar'] = { fg = vscode.vscContextCurrent, bg = 'NONE', nocombine = true },
    IndentBlanklineContextStart = { sp = vscode.vscContextCurrent, bg = 'NONE', nocombine = true, underline = true },
    ['IndentBlanklineChar'] = { fg = vscode.vscContext, bg = 'NONE', nocombine = true },
    ['IndentBlanklineSpaceChar'] = { fg = vscode.vscContext, bg = 'NONE', nocombine = true },
    ['IndentBlanklineSpaceCharBlankline'] = { fg = vscode.vscContext, bg = 'NONE', nocombine = true },

    -- Neotest
    ['NeotestAdapterName'] = { fg = vscode.vscFront, bold = true },
    ['NeotestDir'] = { fg = vscode.vscBlue },
    ['NeotestExpandMarker'] = { fg = vscode.vscDimHighlight },
    ['NeotestFailed'] = { fg = vscode.vscRed },
    ['NeotestFile'] = { fg = vscode.vscBlue },
    ['NeotestFocused'] = { bold = true },
    ['NeotestIndent'] = { fg = vscode.vscDimHighlight },
    ['NeotestMarked'] = { fg = vscode.vscYellowOrange, bold = true },
    ['NeotestNamespace'] = { fg = vscode.vscPink },
    ['NeotestPassed'] = { fg = vscode.vscBlueGreen },
    ['NeotestRunning'] = { fg = vscode.vscDarkYellow },
    ['NeotestSkipped'] = { fg = vscode.vscBlue },
    ['NeotestTarget'] = { fg = vscode.vscLightRed },
    ['NeotestWatching'] = { fg = vscode.vscDarkYellow },
    ['NeotestWinSelect'] = { fg = vscode.vscBlue, bold = true },

    -- LSP
    ['DiagnosticOk'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    DiagnosticWarn = {
        fg = c.text.Warn,
        italic = true,
        underline = false,
        undercurl = false,
        sp = c.code.None,
    },
    DiagnosticError = {
        fg = c.text.Error,
        bg = c.code.None,
        italic = true,
        underline = false,
        undercurl = false,
        sp = c.code.None,
    },
    DiagnosticInfo = {
        fg = c.text.Info,
        bg = c.code.None,
        italic = true,
        underline = false,
        undercurl = false,
        sp = c.code.None,
    },
    DiagnosticHint = {
        fg = c.text.Hint,
        bg = c.code.None,
        italic = true,
        underline = false,
        undercurl = false,
        sp = c.code.None,
    },
    DiagnosticUnnecessary = {
        fg = c.code.DeadCode,
        italic = true,
        underline = false,
        undercurl = false,
        sp = c.code.None,
    },
    ['DiagnosticUnderlineError'] = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vscode.vscRed },
    ['DiagnosticUnderlineInfo'] = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vscode.vscBlue },
    ['DiagnosticUnderlineHint'] = { fg = 'NONE', bg = 'NONE', undercurl = true, sp = vscode.vscBlue },

    LspReferenceText = {
        fg = 'NONE',
        bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue,
    },
    LspReferenceRead = {
        fg = 'NONE',
        bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue,
    },
    LspReferenceWrite = {
        fg = 'NONE',
        bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue,
    },

    -- Trouble
    ['TroubleNormal'] = { link = 'Normal' },
    ['TroubleNormalNC'] = { link = 'Normal' },

    -- COC.nvim
    ['CocHighlightText'] = {
        fg = 'NONE',
        bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue,
    },
    ['CocHighlightRead'] = {
        fg = 'NONE',
        bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue,
    },
    ['CocHighlightWrite'] = {
        fg = 'NONE',
        bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue,
    },

    ['CompeDocumentation'] = { link = 'Pmenu' },
    ['CompeDocumentationBorder'] = { link = 'Pmenu' },
    ['CmpItemKind'] = { link = 'Pmenu' },
    ['CmpItemKindClass'] = { link = 'CmpItemKindConstructor' },
    ['CmpItemKindModule'] = { link = 'CmpItemKindKeyword' },
    ['CmpItemKindOperator'] = { link = '@operator' },
    ['CmpItemKindReference'] = { link = '@variable.parameter.reference' },
    ['CmpItemKindValue'] = { link = '@variable.member' },
    ['CmpItemKindField'] = { link = '@variable.member' },
    ['CmpItemKindEnum'] = { link = '@variable.member' },
    ['CmpItemKindSnippet'] = { link = '@text' },
    ['CmpItemKindColor'] = { link = 'cssColor' },
    ['CmpItemKindFile'] = { link = '@text.uri' },
    ['CmpItemKindFolder'] = { link = '@text.uri' },
    ['CmpItemKindEvent'] = { link = '@constant' },
    ['CmpItemKindEnumMember'] = { link = '@variable.member' },
    ['CmpItemKindConstant'] = { link = '@constant' },
    ['CmpItemKindStruct'] = { link = '@structure' },
    ['CmpItemKindTypeParameter'] = { link = '@variable.parameter' },

    -- Nvim compe
    ['CmpItemKindVariable'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['CmpItemKindInterface'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['CmpItemKindText'] = { fg = vscode.vscLightBlue, bg = 'NONE' },
    ['CmpItemKindFunction'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['CmpItemKindMethod'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['CmpItemKindKeyword'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['CmpItemKindProperty'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['CmpItemKindUnit'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['CmpItemKindConstructor'] = { fg = vscode.vscUiOrange, bg = 'NONE' },
    ['CmpItemMenu'] = { fg = vscode.vscPopupFront, bg = 'NONE' },
    ['CmpItemAbbr'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['CmpItemAbbrDeprecated'] = { fg = vscode.vscCursorDark, bg = vscode.vscPopupBack, strikethrough = true },
    ['CmpItemAbbrMatch'] = { link = 'Matching' },
    ['CmpItemAbbrMatchFuzzy'] = { link = 'Matching' },

    -- HiPhish/rainbow-delimiters.nvim
    ['RainbowDelimiterRed'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['RainbowDelimiterOrange'] = { fg = vscode.vscOrange, bg = 'NONE' },
    ['RainbowDelimiterYellow'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['RainbowDelimiterGreen'] = { fg = vscode.vscGreen, bg = 'NONE' },
    ['RainbowDelimiterCyan'] = { fg = vscode.vscBlueGreen, bg = 'NONE' },
    ['RainbowDelimiterBlue'] = { fg = vscode.vscMediumBlue, bg = 'NONE' },
    ['RainbowDelimiterViolet'] = { fg = vscode.vscViolet, bg = 'NONE' },

    -- rcarriga/nvim-dap-ui
    -- Source: https://github.com/rcarriga/nvim-dap-ui/blob/master/lua/dapui/config/highlights.lua
    ['DapUIBreakpointsCurrentLine'] = { fg = vscode.vscBlueGreen, bold = true },
    ['DapUIBreakpointsDisabledLine'] = { fg = vscode.vscDimHighlight },
    ['DapUIBreakpointsInfo'] = { fg = vscode.vscBlueGreen },
    ['DapUIBreakpointsLine'] = { fg = vscode.vscPink },
    ['DapUIBreakpointsPath'] = { fg = vscode.vscPink },
    ['DapUICurrentFrameName'] = { fg = vscode.vscBlueGreen, bold = true },
    ['DapUIDecoration'] = { fg = vscode.vscPink },
    ['DapUIFloatBorder'] = { fg = vscode.vscPink },
    ['DapUILineNumber'] = { fg = vscode.vscPink },
    ['DapUIModifiedValue'] = { fg = vscode.vscPink, bold = true },
    ['DapUIPlayPause'] = { fg = vscode.vscBlueGreen },
    ['DapUIPlayPauseNC'] = { fg = vscode.vscBlueGreen },
    ['DapUIRestart'] = { fg = vscode.vscBlueGreen },
    ['DapUIRestartNC'] = { fg = vscode.vscBlueGreen },
    ['DapUIScope'] = { fg = vscode.vscPink },
    ['DapUISource'] = { fg = vscode.vscMediumBlue },
    ['DapUIStepBack'] = { fg = vscode.vscPink },
    ['DapUIStepBackNC'] = { fg = vscode.vscPink },
    ['DapUIStepInto'] = { fg = vscode.vscPink },
    ['DapUIStepIntoNC'] = { fg = vscode.vscPink },
    ['DapUIStepOut'] = { fg = vscode.vscPink },
    ['DapUIStepOutNC'] = { fg = vscode.vscPink },
    ['DapUIStepOver'] = { fg = vscode.vscPink },
    ['DapUIStepOverNC'] = { fg = vscode.vscPink },
    ['DapUIStop'] = { fg = vscode.vscRed },
    ['DapUIStopNC'] = { fg = vscode.vscRed },
    ['DapUIStoppedThread'] = { fg = vscode.vscPink },
    ['DapUIThread'] = { fg = vscode.vscBlueGreen },
    ['DapUIType'] = { fg = vscode.vscPink },
    ['DapUIUnavailable'] = { fg = vscode.vscDimHighlight },
    ['DapUIUnavailableNC'] = { fg = vscode.vscDimHighlight },
    ['DapUIWatchesEmpty'] = { fg = vscode.vscDimHighlight },
    ['DapUIWatchesError'] = { fg = vscode.vscRed },
    ['DapUIWatchesValue'] = { fg = vscode.vscBlueGreen },
    ['DapUIWinSelect'] = { fg = vscode.vscPink, bold = true },

    -- Dashboard
    ['DashboardHeader'] = { fg = vscode.vscBlue, bg = 'NONE' },
    ['DashboardDesc'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['DashboardIcon'] = { fg = vscode.vscYellowOrange, bg = 'NONE' },
    ['DashboardShortCut'] = { fg = vscode.vscPink, bg = 'NONE' },
    ['DashboardKey'] = { fg = vscode.vscWhite, bg = 'NONE' },
    ['DashboardFooter'] = { fg = vscode.vscBlue, bg = 'NONE', italic = true },

    -- Illuminate
    ['illuminatedWord'] = { bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue },
    ['illuminatedCurWord'] = { bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue },
    ['IlluminatedWordText'] = { bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue },
    ['IlluminatedWordRead'] = { bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue },
    ['IlluminatedWordWrite'] = { bg = opts.dark and vscode.vscPopupHighlightGray or vscode.vscPopupHighlightLightBlue },

    -- NeogitOrg/neogit
    ['NeogitDiffAdd'] = { fg = vscode.vscGitAdded, bg = vscode.vscDiffGreenDark },
    ['NeogitDiffAddHighlight'] = { fg = vscode.vscGitAdded, bg = vscode.vscDiffGreenLight },
    ['NeogitDiffContext'] = { fg = vscode.vscPopupFront, bg = vscode.vscLeftDark },
    ['NeogitDiffContextHighlight'] = { fg = vscode.vscPopupFront, bg = vscode.vscLeftMid },
    ['NeogitDiffDelete'] = { fg = vscode.vscGitDeleted, bg = vscode.vscDiffRedDark },
    ['NeogitDiffDeleteHighlight'] = { fg = vscode.vscGitDeleted, bg = vscode.vscDiffRedLight },
    ['NeogitDiffHeader'] = { fg = vscode.vscSplitLight, bg = vscode.vscBack },
    ['NeogitDiffHeaderHighlight'] = { fg = vscode.vscSplitLight, bg = vscode.vscBack },
    ['NeogitHunkHeader'] = { fg = vscode.vscGitModified, bg = vscode.vscLeftDark },
    ['NeogitHunkHeaderHighlight'] = { fg = vscode.vscGitModified, bg = vscode.vscLeftMid },

    ['LspFloatWinNormal'] = { fg = vscode.vscFront, bg = 'NONE' },
    ['LspFloatWinBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspInfoBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaHoverBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaSignatureHelpBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaCodeActionBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaDefPreviewBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspLinesDiagBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaBorderTitle'] = { fg = vscode.vscCursorDark, bg = 'NONE' },
    ['LSPSagaDiagnosticTruncateLine'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaDiagnosticBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaShTruncateLine'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaDocTruncateLine'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaRenameBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },
    ['LspSagaLspFinderBorder'] = { fg = vscode.vscLineNumber, bg = 'NONE' },

    TelescopeNormal = { link = 'NormalFloat' },

    TelescopePreviewNormal = { link = 'NormalFloat' },

    TelescopePromptBorder = { link = 'FloatBorder' },
    TelescopeResultsBorder = { link = 'FloatBorder' },
    TelescopePreviewBorder = { link = 'FloatBorder' },

    TelescopePromptPrefix = { link = 'FloatBorder' },
    TelescopePromptTitle = { link = 'NormalFloat' },
    -- TelescopePromptCounter = { fg = c.Debug },

    -- TelescopeResultsTitle = { fg = c.text.LightDimest },
    -- TelescopePreviewTitle = { fg = c.text.LightDimest },
    TelescopeMatching = { link = 'Matching' },
    -- TelescopeResultsNormal = { bg = c.Debug },
    -- TelescopeSelection = { bg = c.editor.Red },
    -- TelescopePreviewTitle
    -- TelescopeSelection
    -- TelescopeResultsDiffAdd
    -- TelescopeResultsDiffChange
    -- TelescopeResultsDiffDelete
    ['TelescopeSelection'] = { fg = vscode.vscFront, bg = vscode.vscPopupHighlightBlue },
    ['TelescopeMultiSelection'] = { fg = vscode.vscFront, bg = vscode.vscPopupHighlightBlue },

    -- Debugging
    ['debugPC'] = { bg = '#4C4C19' },

    -- symbols-outline
    -- white fg and lualine blue bg
    ['FocusedSymbol'] = { fg = '#ffffff', bg = vscode.vscUiBlue },
    ['SymbolsOutlineConnector'] = { fg = vscode.vscLineNumber, bg = 'NONE' },

    ------------------------------------------------
    -----------------LEGACY-------------------------
    ------------------------------------------------
    -- Legacy groups for official git.vim and diff.vim syntax
    ['diffAdded'] = { link = 'DiffAdd' },
    ['diffChanged'] = { link = 'DiffChange' },
    ['diffRemoved'] = { link = 'DiffDelete' },
    -- Legacy groups for treesitter
    ['@parameter'] = { link = '@variable.parameter' },
    ['@field'] = { fg = c.code.Field, bg = 'NONE' },
    ['@string.regex'] = { link = '@string.regexp' },
    ['@float'] = { link = '@number.float' },
    ['@namespace'] = { link = '@module' },
    ['@method'] = { link = '@function.method' },
    ['@method.call.python'] = { fg = c.code.Method, bg = 'NONE' },
    ['@method.call'] = { fg = c.code.Method, bg = 'NONE' },
    ['@conditional'] = { link = '@keyword.conditional' },
    ['@repeat'] = { link = '@keyword.repeat' },

    ['@exception'] = { fg = c.code.ControlFlow, bold = true, bg = 'NONE' },
    ['@exception.python'] = { fg = c.code.ControlFlow, bold = true, bg = 'NONE' },
    ['@storageclass'] = { link = '@keyword.storage' },
    ['@include'] = { link = '@keyword.import' },
    ['@text.strong'] = { link = '@markup.strong' },
    ['@text.underline'] = { link = '@markup.underline' },
    ['@text.emphasis'] = { link = '@markup.italic' },
    ['@text.strike'] = { link = '@markup.strikethrough' },
    ['@text.title'] = { link = '@markup.heading' },
    ['@text.title.1.markdown'] = { fg = c.text.Title, sp = c.code.None, bg = c.code.None },
    ['@text.title.markdown'] = { fg = c.text.Title, sp = c.code.None, bg = c.code.None },
    ['@text.uri'] = { link = '@markup.link.url' },
    ['@text.literal'] = { link = '@markup.raw' },
    ['@text.note'] = { link = '@comment.note' },
    ['@text.warning'] = { link = '@comment.warning' },
    ['@text.danger'] = { link = '@comment.error' },
    ['@text.diff.add'] = { link = '@diff.plus' },
    ['@text.diff.delete'] = { link = '@diff.minus' },

    --------------------------------------------------------------------------------------
    -----------------REDEFINITIONU--------------------------------------------------------
    --------------------------------------------------------------------------------------
    Normal = {
        fg = c.editor.Front,
        bg = opts.transparent and c.None or c.editor.CursorDarkDark,
        ctermfg = c.None,
        -- guifg = c.None,
    },
    NormalNC = {
        fg = c.editor.FrontNC,
        bg = opts.transparent and c.None or c.editor.CursorDarkDark,
        ctermfg = c.None,
        -- link = 'Normal'
    },
    NonText = {
        fg = c.editor.LineNumber,
        bg = opts.transparent and c.None or c.editor.CursorDarkDark,
    },
    ColorColumn = { fg = 'NONE', bg = opts.transparent and c.None or c.editor.CursorDarkDark },
    Cursor = {
        fg = c.editor.CursorDark, --[[ bg = c.editor.CursorLight ]]
    },
    -- Set the cursorline background color
    CursorLine = { fg = c.None, bg = opts.transparent and c.editor.CursorDarkDark or c.editor.CursorDarkest },

    CursorColumn = { fg = 'NONE', bg = c.editor.CursorDarkDark },
    EndOfBuffer = {
        fg = opts.transparent and c.None or c.editor.Background,
        bg = opts.transparent and c.None or c.editor.CursorDarkDark,
    },
    ErrorMsg = {
        fg = c.editor.Red, --[[ bg = c.editor.Back ]]
    },
    VertSplit = {
        fg = c.editor.SplitDark,
        bg = c.None,
    },
    Folded = {
        fg = 'NONE',
        bg = opts.transparent and c.None or c.editor.CursorDarkDark,
    },
    FoldColumn = {
        fg = c.editor.LineNumber, --[[ bg = c.editor.Background ]]
    },
    SignColumn = {
        link = 'Normal',
    },
    IncSearch = { fg = c.text.ModifiedLight, bold = true, bg = c.editor.Search },
    Search = { bg = c.editor.Search },
    CurSearch = { bold = true, bg = c.editor.CurSearch },
    LineNr = {
        fg = c.editor.LineNumber,
        bg = opts.transparent and c.None or c.editor.CursorDarkDark,
    },
    CursorLineNr = {
        fg = c.editor.PopupFront,
        bg = c.None,
    },
    MatchParen = { fg = c.editor.None, bg = c.editor.CursorDark },
    ModeMsg = {
        fg = c.editor.Front, --[[ bg = c.editor.LeftDark ]]
    },
    MoreMsg = {
        fg = c.editor.Front, --[[ bg = c.editor.LeftDark ]]
    },

    NormalFloat = { fg = c.editor.Front, bg = opts.transparent and c.None or c.editor.Background }, -- Normal text in floating windows.
    NormalFloatWinblend = { fg = c.editor.Front, bg = opts.transparent and c.editor.PopupBack or c.editor.Background }, -- Normal text in floating windows using with winblend

    FloatBorder = { fg = c.text.LightDimest, bg = opts.transparent and c.None or c.editor.Background },
    FloatBorderWinblend = {
        fg = c.text.LightDimest,
        bg = opts.transparent and c.editor.PopupBack or c.editor.Background,
    },

    WinSeparator = { fg = c.text.LightDimest },

    Pmenu = {
        fg = c.editor.PopupFront, --[[ bg = c.editor.PopupBack ]]
    },
    PmenuSel = { fg = c.editor.PopupFront, bg = c.editor.PopupHighlightBlue },
    PmenuSbar = {
        fg = 'NONE', --[[ bg = c.editor.PopupHighlightGray ]]
    },
    PmenuThumb = {
        fg = 'NONE', --[[ bg = c.editor.PopupFront ]]
    },
    Question = {
        fg = c.editor.Blue, --[[ bg = c.editor.Background ]]
    },
    SpecialKey = { fg = c.editor.Blue, bg = c.editor.None },
    StatusLine = {
        fg = c.editor.Front,
        bg = c.None,
    },
    StatusLineNC = {
        link = 'StatusLine',
    },
    Done = {
        fg = c.text.Done,
        bold = true,
    },
    Todo = {
        fg = c.code.Red,
        bg = c.text.Todo,
        bold = true,
    },
    Note = {
        fg = c.code.Normal,
        bg = c.text.Todo,
        bold = true,
    },
    Title = {
        --[[ fg = c.editor.None, bg = c.editor.None, ]]
        bold = true,
    },
    Visual = { fg = c.editor.None, bg = c.editor.Selection },
    VisualNOS = { fg = c.editor.None, bg = c.editor.Selection },
    WarningMsg = { fg = c.text.Warn, bg = c.editor.Background, bold = true },
    WildMenu = { fg = c.editor.None, bg = c.editor.Selection },
    ['@spell'] = { fg = c.code.Comment, bg = c.code.None, italic = false },
    ['@spell.latex'] = { fg = c.code.Variable, bg = c.code.None, italic = false },
    -- ['@spell.markdown'] = { fg = c.text.Normal, bg = c.code.None, italic = false, bold = true },
    ['@spell.markdown'] = { fg = c.None, bg = c.code.None, italic = false, bold = true },
    ['@spell.python'] = { fg = c.code.Comment, bg = c.code.None, italic = false, bold = false },
    -------------------------------------------------------------------------

    --------------------------BASIC-----------------
    Comment = { fg = c.code.Comment, italic = false, bg = c.None },
    Variable = { fg = c.code.Variable, bg = 'None' },

    Constant = { fg = c.code.Constant, bg = 'NONE' },
    Global = { fg = c.code.Global, bg = 'NONE', bold = true },
    String = { fg = c.code.String, bg = 'NONE' },
    Character = { fg = c.editor.Orange, bg = 'NONE' },
    Number = { fg = c.code.Constant, bg = 'NONE' },
    Boolean = { fg = c.code.BuiltInConstant, bg = 'NONE' },
    Float = { fg = c.code.Constant, bg = 'NONE' },
    Identifier = { fg = c.code.Variable, bg = 'NONE' },
    Function = { fg = c.editor.Yellow, bg = 'NONE' },
    Statement = { fg = c.code.Preprocessor, bg = c.None },
    Conditional = { fg = c.code.ControlFlow, bold = true, bg = 'NONE' },
    Repeat = { fg = c.code.ControlFlow, bold = true, bg = 'NONE' },
    Label = { fg = c.code.ControlFlow, bg = 'NONE' },
    Operator = { fg = c.code.Normal, bg = 'NONE' },
    Keyword = { fg = c.code.Keyword, bold = true, bg = 'NONE' },
    Exception = { fg = c.code.ControlFlow, bg = 'NONE' },
    PreProc = { fg = c.code.Preprocessor, bg = c.None },
    Include = { fg = c.code.Include, bg = 'NONE' },
    Define = { fg = c.code.Preprocessor, bg = 'NONE' },
    Macro = { fg = c.code.Macro, bg = 'NONE' },
    Type = { fg = c.code.Type, bg = c.None },
    StorageClass = { fg = c.code.Keyword, bg = 'NONE' },
    Structure = { fg = c.code.Type, bg = 'NONE' },
    Typedef = { fg = c.code.Type, bg = 'NONE' },
    Special = { fg = c.editor.YellowOrange, bg = 'NONE' },
    Namespace = { fg = c.code.Namespace },
    SpecialChar = { fg = c.editor.Front, bg = 'NONE' },
    Tag = { fg = c.editor.Front, bg = 'NONE' },
    Delimiter = { fg = c.editor.Front, bg = 'NONE' },
    SpecialComment = { fg = c.code.Comment, bg = 'NONE' },
    Debug = { fg = c.editor.Front, bg = 'NONE' },
    Underlined = { fg = c.Debug, bg = c.None, underline = true },
    Conceal = {
        fg = c.text.LightDim, --[[ bg = c.editor.Background ]]
    },
    Ignore = { fg = c.editor.Front, bg = 'NONE' },
    Error = { fg = c.editor.Red, bg = c.editor.Background, undercurl = true, sp = c.editor.Red },
    SpellBad = { bg = c.editor.Background, undercurl = true, sp = c.editor.Red },
    SpellCap = { fg = c.editor.Red, bg = c.editor.Background, undercurl = true, sp = c.editor.Red },
    SpellRare = { fg = c.editor.Red, bg = c.editor.Background, undercurl = true, sp = c.editor.Red },
    SpellLocal = { fg = c.editor.Red, bg = c.editor.Background, undercurl = true, sp = c.editor.Red },

    --Whitespace                 =   { fg = c.editor.LineNumber },
    LspGlobal = { link = 'Global' },
    GlobalScope = { link = 'Global' },
    ['@global'] = { link = 'Global' },
    LspGlobalScope = { link = 'Global' },
    LspNamespace = { fg = c.code.Namespace, bg = 'None', bold = true },
    ['@globalScope'] = { italic = true, bold = true },

    namespace = { fg = c.code.Namespace, bg = 'None' },
    ['@class'] = { fg = c.code.Type, bold = false, italic = false },
    ['@macro'] = { fg = c.code.Macro, bold = false, italic = false },
    ['@module'] = { link = 'Namespace' },
    ['@lsp.type.namespace'] = { link = 'Namespace' },
    --['@variable#globalScope']  ={ fg = c.code.Global,italic = true,  bold = true},

    ['@comment'] = { fg = c.code.Comment, bg = 'NONE' },
    ['@keyword'] = { fg = c.code.Keyword, bold = false, bg = 'NONE' },
    ['@keyword.repeat'] = { fg = c.code.ControlFlow, bold = false, bg = 'NONE' },
    ['@keyword.conditional'] = { fg = c.code.ControlFlow, bold = false, bg = 'NONE' },
    ['@keyword.exception'] = { link = 'Conditional' },
    ['@keyword.enum'] = { fg = c.code.Keyword, bold = false, bg = 'NONE' },
    ['@keyword.function'] = { fg = c.code.Keyword, bold = false, bg = 'NONE' },
    ['@keyword.operator'] = { fg = c.code.Keyword, bold = false, bg = 'NONE' },
    ['@keyword.import'] = { fg = c.code.Keyword, bold = false, bg = 'NONE' },

    ['@keyword.return'] = { fg = c.code.ControlFlow, bold = true, bg = 'NONE' }, -- return,

    -- Fucntions
    ['@function'] = { fg = c.code.Function, bg = 'NONE' },
    ['@function.method'] = { fg = c.code.FunctionMethod, bg = 'NONE' },
    ['@function.builtin'] = { fg = c.editor.YellowOrange, bg = 'NONE' },
    ['@function.macro'] = { fg = c.code.MacroFunction, bg = 'NONE' },
    ['@function.macro.latex'] = { fg = c.code.Keyword, bg = 'NONE' },
    ['@function.call'] = { fg = c.code.FunctionCall, bg = 'NONE' },

    --Literals
    ['@string'] = { fg = c.code.String, bg = c.code.None },
    ['@string.escape'] = { fg = c.code.StringEscape, bg = 'NONE' },
    ['@string.documentation'] = { link = 'Comment' },

    ['@character'] = { fg = c.code.Char, bg = 'NONE' },
    ['@number'] = { fg = c.code.Number, bg = 'NONE' },
    ['@number.float'] = { link = '@number' },
    ['@boolean'] = { fg = c.code.BuiltInConstant, bg = 'NONE' },

    -- Variables
    ['@variable'] = { fg = c.code.Variable, bg = 'NONE' },
    ['@variable.builtin'] = { fg = c.code.VariableBuiltin, bold = true, italic = false, bg = 'NONE' },
    ['@variable.member'] = { link = '@property' },
    ['@property'] = { fg = c.code.Property, bg = 'NONE' },
    ['@lsp.type.property.lua'] = { fg = c.code.Property, bg = 'NONE' },
    ['@reference'] = { link = '@property' },
    -- Preprocessores
    ['@preproc'] = { fg = c.code.Preprocessor, bg = 'NONE' },
    ['@define'] = { fg = c.code.Preprocessor, bg = 'NONE' },
    ['@include.c'] = { fg = c.code.Preprocessor, bg = 'NONE' },

    -- Parameteres:
    ['@variable.parameter'] = { fg = c.code.Parameter, bg = 'NONE' },
    ['@parameter.reference'] = { link = '@parameter' },
    ['@lsp.type.parameter'] = { link = '@variable.parameter' },

    -- @Types
    ['@type'] = { fg = c.code.Type, bg = 'NONE' },
    ['@type.qualifier'] = { fg = c.code.Keyword, bg = 'NONE' },
    -- ['@type.definition'] = { fg = c.code.Keyword, bg = 'NONE' },
    ['@type.definition'] = { link = '@type' },
    ['@type.qualifier.c'] = { fg = c.code.Keyword, bg = 'NONE' },
    ['@type.qualifier.cpp'] = { fg = c.code.Keyword, bg = 'NONE' },
    ['@type.definition.hare'] = { fg = c.code.Type, bg = 'NONE' },
    ['@type.builtin'] = { fg = c.code.BuiltInType, bg = 'NONE' },
    ['@type.builtin.py'] = { fg = c.code.BuiltInType, bg = 'NONE' },
    ['@type.builtin.python'] = { fg = c.code.BuiltInType, bg = 'NONE' },
    ['@structure'] = { fg = c.code.Type, bg = 'NONE' },

    -- @Tags
    ['@tag.delimiter'] = { fg = c.editor.Gray, bg = 'NONE' },
    ['@tag.attribute'] = { fg = c.editor.Keyword, italic = true, bg = 'NONE' },
    ['@tag.html'] = { fg = c.editor.Keyword, bold = true, bg = 'NONE' },

    ['@text.diff.delete.diff'] = { fg = c.text.DiffDelete },
    ['@text.diff.add.diff'] = { fg = c.text.DiffAdd },

    --['@definition.macro']    = { fg = c.code.Macro, bg = 'NONE' },
    --['@definition.var']      = { fg = c.code.Macro, bg = 'NONE' },

    --['@annotation']          = { fg = c.editor.Yellow, bg = 'NONE' },
    --['@attribute']           = { fg = c.editor.BlueGreen, bg = 'NONE' },

    ['@constructor'] = { fg = c.code.Construtor },
    ['@constructor.cpp'] = { fg = c.code.Construtor, bold = true },
    ['@constructor.py'] = { fg = c.code.Construtor, bold = true },

    ['@label'] = { fg = c.code.Label, bg = 'NONE' },

    ['@operator'] = { fg = c.editor.Front, bg = 'NONE' },

    ['@lsp.mod.variable.global'] = { fg = c.code.Global },
    ['@lsp.typemod.parameter.definition'] = {},
    ['@lsp.typemod.variable.global'] = { fg = c.code.Global },
    ['@lsp.typemod.function.global'] = { fg = c.code.GlobalFunction },
    ['@lsp.typemod.variable.globalScope'] = { fg = c.code.Global },
    ['@lsp.typemod.variable.fileScope'] = { fg = c.code.FileScope },
    ['@lsp.typemod.variable.defaultLibrary'] = { fg = c.code.DefaultLibrary },
    ['@lsp.typemod.variable.definition'] = { fg = c.code.VariableBuiltin },
    ['@lsp.typemod.variable.definition.c'] = { link = '@lsp.type.variable' },
    ['@lsp.typemod.variable.definition.cpp'] = { link = '@lsp.type.variable' },
    ['@lsp.typemod.class.defaultLibrary'] = { link = '@type.builtin' },
    ['@lsp.mode.defaultLibrary'] = { fg = c.code.Native },
    ['@defaultLibrary.python'] = { fg = c.code.Native },
    ['@defaultLibrary.lua'] = { fg = c.code.Native },

    ['@lsp.mod.constructorOrDestructor'] = { fg = c.code.ConstrutorOnClass },
    ['@lsp.type.comment'] = { link = 'Comment' },
    ['@lsp.type.comment.c'] = { fg = c.code.DeadCode },
    ['@lsp.type.comment.cpp'] = { fg = c.code.DeadCode },

    -- ['@variable.builtin']= { fg = c.code.VariableBuiltin, bg = 'NONE' },
    -- ['@text']= { fg = c.editor.Front, bg = 'NONE' },
    -- ['@text.underline']= { fg = c.editor.YellowOrange, bg = 'NONE' },
    -- ['@tag']= { fg = c.code.Normal, bg = 'NONE' },
    -- ['markdown@text.literal']= { fg = c.editor.Orange, bg = 'NONE' },
    -- ['markdown_inline@text.literal']= { fg = c.editor.Orange, bg = 'NONE' },
    -- ['@text.emphasis']= { fg = c.editor.Front, bg = 'NONE', italic = true },
    -- ['@text.strong']= { fg = isDark and c.editor.Blue or c.editor.Violet, bold = true },
    -- ['@text.uri']= { fg = c.editor.Front, bg = 'NONE' },
    -- ['@textReference']= { fg = isDark and c.editor.Orange or c.editor.YellowOrange },
    -- ['@punctuation.delimiter']= { fg = c.editor.Front, bg = 'NONE' },
    -- ['@text.note']= { fg = c.editor.BlueGreen, bg = 'NONE', bold = true },
    -- ['@text.warning']= { fg = c.editor.YellowOrange, bg = 'NONE', bold = true },
    -- ['@text.danger']= { fg = c.editor.Red, bg = 'NONE', bold = true },
    -- ['@scope']= { fg = c.editor.Red, bg = 'NONE', bold = true },
    ----------------------TAB-----------------------------
    TblineFill = {
        bg = c.code.None,
    },

    TbLineBufOn = {
        bg = c.code.None,
    },

    TbLineBufOff = {
        bg = c.code.None,
    },

    TbLineBufOnModified = {
        bg = c.code.None,
    },

    TbBufLineBufOffModified = {
        bg = c.code.None,
    },

    TbLineBufOnClose = {
        bg = c.code.None,
    },

    TbLineBufOffClose = {
        bg = c.code.None,
    },

    -- TblineTabNewBtn = {
    --   fg = colors.white,
    --   bg = colors.one_bg3,
    --   bold = true,
    -- },
    --
    -- TbLineTabOn = {
    --   fg = colors.black,
    --   bg = colors.nord_blue,
    --   bold = true,
    -- },
    --
    -- TbLineTabOff = {
    --   fg = colors.white,
    --   bg = colors.one_bg2,
    -- },
    --
    -- TbLineTabCloseBtn = {
    --   fg = colors.black,
    --   bg = colors.nord_blue,
    -- },
    --
    -- TBTabTitle = {
    --   fg = colors.black,
    --   bg = colors.white,
    -- },
    --
    -- TbLineThemeToggleBtn = {
    --   bold = true,
    --   fg = colors.white,
    --   bg = colors.one_bg3,
    -- },
    --
    -- TbLineCloseAllBufsBtn = {
    --   bold = true,
    --   bg = colors.red,
    --   fg = colors.black,
    -- },
    St_Mode = {
        fg = c.code.None,
        bg = c.code.None,
    },
    StText = {
        fg = c.code.None,
        bg = c.code.None,
    },
    St_EmptySpace = {
        fg = c.code.None,
        bg = c.code.None,
    },
    St_EmptySpace2 = {
        fg = c.code.None,
        bg = c.code.None,
    },
    -- St_pos_text = {
    --   fg = c.code.None,
    --   bg = c.code.None,
    -- },
    --

    NvimTreeNormalFloat = { link = 'NormalFloat' },
    NvimTreeNormalFloatBorder = { link = 'FloatBorder' },
    NvimTreeCutHL = { link = 'Note' },

    NvimTreeFolderIcon = {
        link = 'Directory',
    },
    NvimTreeOpenedFolderName = {
        link = 'Directory',
        bold = true,
    },
    NvimTreeIndentMarker = {
        fg = c.text.LightDimest,
        bold = false,
    },
    -- NvimTreeGitFolderIgnoredHL = { fg = c.Debug },
    NvimTreeGitFileIgnoredHL = { fg = c.text.LightDim },

    NvimTreeCursorLine = { fg = c.None, bg = c.editor.CursorDarkDarkest },

    NvimTreeHiddenFileHL = {
        fg = c.text.LightDimest,
        italic = true,
    },

    NvimTreeHiddenFolderHL = {
        fg = c.text.LightDimest,
        bold = true,
        italic = true,
    },

    IblIndent = { fg = c.text.LightDimest },
    IblWhitespace = { fg = c.text.LightDimest },
    IblScope = { fg = c.text.Light },
    ['@ibl.scope.underline.0'] = {
        undercurl = true, --[[fg = c.text.Normal]]
        bold = true,
    },
    ['@ibl.scope.underline'] = { link = '@ibl.scope.underline.1' },
    IblScopeChar = { link = 'IblScope' },
    IblChar = { link = 'IblIndent' },

    -- MiniIndentscopeSymbol = { link = 'IblIndent' },
    MiniIndentscopeSymbol = { bg = c.None, fg = c.None },
    -- MiniIndentscopeSymbol = { fg = c.text.Light },
    MiniIndentscopeSymbolOff = { bg = c.editor.TabCurrent, fg = c.None },

    --Highlight depending on mode (second output from |MiniStatusline.section_mode|):
    MiniStatuslineModeNormal = { bg = c.editor.Violet },
    MiniStatuslineModeInsert = { fg = c.text.Darkest, bg = c.editor.LightGreen },
    MiniStatuslineModeVisual = { bg = c.editor.Selection },
    MiniStatuslineModeCommand = { fg = c.text.Darkest, bg = c.editor.LightOrange },

    -- * `MiniStatuslineModeReplace` - Replace mode.
    -- * `MiniStatuslineModeOther` - other modes (like Terminal, etc.).
    --
    -- Highlight used in default statusline:
    -- * `MiniStatuslineDevinfo` - for "dev info" group
    --   (|MiniStatusline.section_git| and |MiniStatusline.section_diagnostics|).
    -- * `MiniStatuslineFilename` - for |MiniStatusline.section_filename| section.
    -- * `MiniStatuslineFileinfo` - for |MiniStatusline.section_fileinfo| section.
    --
    -- Other groups:
    -- * `MiniStatuslineInactive` - highliting in not focused window.

    -- mini.tabline
    MiniTablineCurrent = { fg = c.text.Bright, bg = c.editor.TabCurrent },
    MiniTablineVisible = { fg = c.text.Light, bg = c.editor.TabVisible },
    MiniTablineHidden = {
        fg = opts.transparent and c.text.LightDimest or c.text.LightDimest,
        bg = opts.transparent and c.None or c.editor.TabHidden,
    },

    MiniTablineModifiedCurrent = { fg = c.text.Modified, bg = c.editor.TabCurrent },
    MiniTablineModifiedVisible = { fg = c.text.ModifiedLight, bg = c.editor.TabVisible },
    MiniTablineModifiedHidden = { fg = c.text.ModifiedLightest, bg = c.editor.TabHidden },
    -- * `MiniTablineFill` - unused right space of tabline.
    -- Section with tabpage information.
    MiniTablineTabpagesection = { fg = c.text.Hint, bg = opts.transparent and c.None or c.editor.TabHidden },

    TabLine = { fg = c.editor.Front, bg = opts.transparent and c.None or c.editor.TabVisible },
    TabLineFill = { fg = c.editor.Front, bg = opts.transparent and c.None or c.editor.TabOutside },
    TabLineSel = { fg = c.editor.Front, bg = opts.transparent and c.None or c.editor.TabCurrent },

    NoiceCmdlinePopupBorder = { fg = c.editor.SplitDark },
    ['@markup.list.unchecked.markdown'] = { link = 'Conceal' },
    ['@markup.link.markdown_inline'] = { link = 'Conceal' },
    ['@markup.list.checked.markdown'] = {
        fg = c.text.LightDimest,--[[  bg = c.editor.DiffGreenLight, ]]
        standout = false,
        underdotted = false,
        strikethrough = true,
        bold = true,
        nocombine = false,
        reverse = false,
    },

    --
    -- @Tags
    DiffAdd = { fg = 'NONE', sp = c.code.None, bg = c.editor.DiffGreenLight },
    DiffDelete = { fg = 'NONE', sp = c.code.None, bg = c.editor.DiffRedDark },
    DiffText = { fg = 'NONE', sp = c.code.None, bg = c.editor.DiffRedLight },

    ['cDefine'] = { fg = c.code.Preprocessor, bg = 'NONE' },
    ['cppModifier'] = { fg = c.code.Keyword, bg = 'NONE' },

    ['@keyword.python'] = { fg = c.code.Keyword, sp = c.code.None, bg = 'NONE' },
}

return M
