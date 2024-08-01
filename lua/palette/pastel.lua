local M = {}

local pastel = {
    -- c1  = "#6A789e",
    -- c1  = "#6F729F",
    -- c1  = "#7980A0",
    c0 = '#898989',
    c1 = '#7782A4', --oficial
    c2 = '#748779',
    c3 = '#7a9f79',
    c4 = '#6E92B8',
    c5 = '#5E82a8',
    c6 = '#747987',
    c7 = '#a08080',

    c8 = '#d0d0d0',
    c9 = '#D8E9FF',
    c10 = '#D1E2FF',
    c11 = '#c0c8FF',
    c12 = '#85897e',
    c13 = '#b2bfc3',
    c14 = '#222222',
    c15 = '#262626',
    c16 = '#2e2e2e',
    c17 = '#323232',
    c18 = '#FFDCA1',
    c19 = '#ffc187',
    c20 = '#D7BA7D',
    c21 = '#b79A6D',
}

local blow = {
    -- c1  = "#6A789e",
    -- c1  = "#6F729F",
    -- c1  = "#7980A0",
    c0 = '#767676',
    -- c1 = '#FeFeFF',
    c1 = '#FfFeFF',
    c2 = '#748779',
    c3 = '#7a9f79',
    c4 = '#6E92B8',
    c5 = '#5E82a8',
    c6 = '#747987',
    c7 = '#a08080',
    c8 = '#b1b4bc',
    c9 = '#c9E2Fe',
    c10 = '#c7E1Fe',
    c11 = '#b9c2Fe',
    c12 = '#85897e',
    c13 = '#b2bfc3',
    c14 = '#222222',
    c15 = '#262626',
    c16 = '#2e2e2e',
    c17 = '#3e3e3e',
    c18 = '#FFDCA1',
    c19 = '#ffc187',
    c20 = '#D7BA7D',
    c21 = '#918160',
    c30 = '#9B9B9B',
    -- c14    = "#c1ccd0",
}

-- local palette = pastel
local palette = blow

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

    Args = palette.c0,
    Parameter = palette.c0,

    Type = '#64B5B7',
    EnumType = '#64B5B7',
    Construtor = '#64B5B7',
    BuiltInType = '#398E8E',
    ConstrutorOnClass = '#8FCACA',

    -- Type                 = "#8FCACB",
    -- EnumType             = "#8FCACB",
    -- Construtor           = "#8FCACB",
    -- BuiltInType          = "#59AEAE",
    -- ConstrutorOnClass    = "#8FCACA",

    -- Type                 = "#6E92B8",
    -- EnumType             = "#6E92B8",
    -- Construtor           = "#6E92B8",
    -- BuiltInType          = "#5879A8",
    -- ConstrutorOnClass    = "#5A7393",

    -- Type                 = "#569CD6", -- Pastel blue
    -- EnumType             = "#569CD6", -- Pastel blue
    -- ConstrutorOnClass    = "#7D97AD", -- Slightly darker pastel blue
    -- Construtor           = "#569CD6", -- Pastel blue

    -- Type                 = , -- Warm pastel orange
    -- EnumType             = "#E9BBB5", -- Warm pastel pink
    -- Construtor           = "#F09683", -- Warm pastel orange
    -- ConstrutorOnClass    = "#C3B783", -- Warm pastel yellow

    Namespace = '#cffffe',
    Global = '#F8D1EF',
    GlobalFunction = '#F8D1df',
    FileScope = '#e8D1d1',
    -- DefaultLibrary = '#e8DCA1',
    -- DefaultLibrary = '#e8D1b9',
    -- DefaultLibrary = '#ffc187',
    DefaultLibrary = '#e0c08d',

    Invalid = '#F47E7E', -- Pastel red

    MacroFunction = '#D5D5FF', -- Pastel lavender
    Macro = '#D0C2FF', -- Pastel purple

    Preprocessor = palette.c30,
    Include = palette.c1, -- Gray

    Unnecessary = '#B2B2B2', -- Light gray

    -- Keyword              = "#FFB366", -- Pastel orange
    -- Keyword              = "#8FCACA", -- Pastel orange
    -- Keyword              = "#FFDBCC", -- Pastel orange
    Keyword = palette.c1, -- Pastel orange
    -- Keyword              = "#F09683", -- Pastel orange
    -- Keyword              = "#E9BBB5", -- Pastel orange
    -- Keyword              = "#9B9B9B", -- Pastel orange

    Normal = '#E2E2E2', -- Light gray

    Variable = palette.c8, -- Pastel blue
    VariableLocal = palette.c9, -- Pastel blue
    Field = palette.c10, -- Pastel blue
    Property = palette.c10, -- Pastel blue
    VariableBuiltin = palette.c11, -- Light pastel blue

    -- ControlFlow          = "#F09683",
    -- ControlFlow          = "#6E92B8",
    ControlFlow = palette.c1,
    -- ControlFlow          = "#E9BBB5",
    -- ControlFlow          = "#FFDBCC", -- Pastel orange
    -- ControlFlow          = "#9B9B9B", -- Pastel pink

    -- Label                = "#9B9B9B", -- Pastel pink
    Label = '#E9BBB5', -- Pastel pink
    Method = '#FFEDC0', -- Warm pastel yellow
    Function = '#FFEDC0', -- Warm pastel yellow
    FunctionCall = '#FFEDC0', -- Warm pastel yellow
    Native = '#FFDCA1', -- Pastel orange
    Special = '#FFDCA1', -- Pastel orange

    Numeric = '#D0ECC8', -- Pastel green
    Constant = '#D0ECC8', -- Pastel green
    EnumConstant = '#D0ECC8', -- Pastel green
    BuiltInConstant = '#b5cea8',

    -- Constant             = "#b5cea8",
    -- EnumConstant         = "#b5cea8",
    -- BuiltInConstant      = "#b5cea8",

    -- Constant             = "#D7ECC8", -- Pastel green
    -- EnumConstant         = "#D7ECC8", -- Pastel green
    -- BuiltInConstant      = "#D7ECC8", -- Pastel green
}

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
    Back = pastel.c14,
    --Back = '#1F1F1F',

    TabCurrent = pastel.c17,
    TabVisible = pastel.c15,
    TabHidden = pastel.c14,
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
