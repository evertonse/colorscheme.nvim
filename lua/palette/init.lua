local palette = require('palette.pastel')
local M = {}
M.None = 'NONE'
M.Debug = '#FF00FF'

M.code = {
    None = 'NONE',
    Debug = '#FF00FF',
    DeadCode = '#878787',
    Comment = palette.c2,

    String = '#CE9178',
    StringEscape = '#FFDCA1',
    Char = '#DE9178',
    Punct = '#DE9178',

    Namespace = palette.Namespace:str(),
    Global = '#F8D1EF',
    GlobalFunction = '#F8D1df',
    FileScope = '#e8D1d1',
    -- DefaultLibrary = '#e8DCA1',
    -- DefaultLibrary = '#e8D1b9',
    -- DefaultLibrary = '#ffc187',
    DefaultLibrary = '#e0c08d',

    Invalid = '#F47E7E', -- palette red

    MacroFunction = '#D5D5FF', -- palette lavender
    Macro = '#D0C2FF', -- palette purple

    Preprocessor = palette.c30,
    Include = palette.c1, -- Gray

    Unnecessary = '#B2B2B2', -- Light gray

    -- Keyword              = "#FFB366", -- palette orange
    -- Keyword              = "#8FCACA", -- palette orange
    -- Keyword              = "#FFDBCC", -- palette orange
    Keyword = palette.c1, -- palette orange
    -- Keyword              = "#F09683", -- palette orange
    -- Keyword              = "#E9BBB5", -- palette orange
    -- Keyword              = "#9B9B9B", -- palette orange

    Normal = '#E2E2E2', -- Light gray

    Variable = palette.Variable:str(), -- palette blue
    VariableLocal = palette.c9, -- palette blue
    Field = palette.Field:str(), -- palette blue
    Property = palette.Field:str(), -- palette blue
    VariableBuiltin = palette.c11, -- Light palette blue
    -- ControlFlow          = "#F09683",
    -- ControlFlow          = "#6E92B8",
    ControlFlow = palette.c1,
    -- ControlFlow          = "#E9BBB5",
    -- ControlFlow          = "#FFDBCC", -- palette orange
    -- ControlFlow          = "#9B9B9B", -- palette pink

    -- Label                = "#9B9B9B", -- palette pink
    Label = '#E9BBB5', -- palette pink
    Method = '#FFEDC0', -- Warm palette yellow
    Function = '#FFEDC0', -- Warm palette yellow
    FunctionCall = '#FFEDC0', -- Warm palette yellow
    Native = '#FFDCA1', -- palette orange
    Special = '#FFDCA1', -- palette orange

    Numeric = '#D0ECC8', -- palette green
    Constant = '#D0ECC8', -- palette green
    EnumConstant = '#D0ECC8', -- palette green
    BuiltInConstant = '#b5cea8',
}

M.code.Type = palette.Type:str()
M.code.EnumType = M.code.Type
M.code.Construtor = M.code.Type

M.code.BuiltInType = palette.Type:copy():darken(0.12):str()
M.code.Construtor = palette.Type:copy():lighten(0.05):str()
M.code.ConstrutorOnClass = palette.Type:copy():lighten(0.09):str()

-- '#767676',
M.code.Args = palette.Variable:copy():saturation(0.009):darken(0.26):str()
M.code.Parameter = M.code.Args
-- vim.fn.confirm(vim.inspect(M.code.Parameter))

M.text = {
    Background = 'NONE',
    DiffAdd = '#81b88b',
    Title = '#90A0A0',
    DiffDelete = '#f44747',
    Todo = '#FFA0A9',
    Note = '#D7BA7D',
    Modified = palette.c19,
    ModifiedLight = palette.c20,
    ModifiedLightest = palette.c21,
    Done = '#81b88b',
    Error = '#f48787',
    Warn = '#cdcd88',
    Info = '#DCDCAA',
    Hint = '#bBbBAA',
    Dark = '#1E1E1E',
    Darkest = '#010101',
    LightDimest = '#484848',
    LightDim = '#565656',
    Light = '#787878',
    Bright = '#f9f9f9',
    Normal = '#D4D4D4',
}

M.editor = {
    None = 'NONE',
    -- Folder = '#90A0A0',
    Folder = '#D7BA7D',
    Front = '#D4D4D4',
    Back = palette.c14,
    --Back = '#1F1F1F',

    TabCurrent = palette.c17,
    TabVisible = palette.c15,
    TabHidden = palette.c14,
    TabOutside = '#252526',

    LeftDark = '#212121',
    LeftMid = '#373737',
    LeftLight = '#636369',

    PopupFront = '#BBBBBB',
    PopupBack = '#272727',
    PopupHighlightBlue = '#004b72',
    PopupHighlightGray = '#343B41',

    SplitLight = '#898989',
    SplitDark = '#444444',
    SplitThumb = '#424242',

    CursorDarkest = '#1e1e1e',
    CursorDarkDarkest = '#191919',
    CursorDarkDark = '#222222',
    CursorDark = '#51504F',
    CursorLight = '#AEAFAD',
    Selection = '#264F78',
    LineNumber = '#5A5A5A',

    DiffRedDark = '#3B2222',
    DiffRedLight = '#6F1313',
    DiffRedLightLight = '#FB0101',
    DiffGreenDark = '#373D29',
    DiffGreenLight = '#223022',
    SearchCurrent = '#515c6a',
    Search = '#613315',
    CurSearch = '#814325',

    GitAdded = '#81b88b',
    GitModified = '#e2c08d',
    GitDeleted = '#c74e39',
    GitRenamed = '#73c991',
    GitUntracked = '#73c991',
    GitIgnored = '#8c8c8c',
    GitStageModified = '#e2c08d',
    GitStageDeleted = '#c74e39',
    GitConflicting = '#e4676b',
    GitSubmodule = '#8db9e2',

    Context = '#404040',
    ContextCurrent = '#707070',

    FoldBackground = '#202d39',

    -- Syntax colors
    Gray = '#808080',
    -- Violet = '#646695',
    Violet = '#343665',
    Blue = '#569CD6',
    DarkBlue = '#223E55',
    MediumBlue = '#18a2fe',
    LightBlue = '#9CDCFE',
    Green = '#6A9955',
    BlueGreen = '#4EC9B0',
    LightGreen = '#B5CEA8',
    Red = '#F44747',
    Orange = '#CE9178',
    LightOrange = '#E9BBB5',
    Yellow = '#DCDCAA',
    LightRed = '#D16969',
    YellowOrange = '#D7BA7D',
    Pink = '#C586C0',
}

return M
