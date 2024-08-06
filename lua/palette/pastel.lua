local Color = require('palette.color').Color
local METHOD = require('palette.color').METHOD

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
-- ConstrutorOnClass    = "#C3B783", -- Warm pastel yellow
-- Construtor           = "#F09683", -- Warm pastel orange

blow.Type = Color.hex('#64B5B7')
blow.Type = Color.hex('#E9BBB5')
blow.Type = Color.hex('#F48680') -- TODO: need to ajust to make darken work with stron colors such as this
blow.Type = Color.hex('#548ac4')
blow.Type = Color.hex('#569CD6')
blow.Type = Color.hex('#5879A8')
blow.Type = Color.rgb(147, 152, 192)

blow.Namespace = blow.Type.g >= blow.Type.b and Color.hex('#cffffe') or Color.hex('#bfe1ff')
blow.Namespace = blow.Type.r >= blow.Type.b and Color.hex('#fff0fb') or blow.Namespace

blow.String = Color.hex('#CE9178'):saturation(0.38)
blow.Field = Color.hex('#D8E9FF')
blow.Field = Color.hex('#D1E2FF')
blow.Field = Color.hex('#c7E1Fe')
blow.Field = Color.hex('#c9E2Fe')

blow.Field = Color.hex('#c0d0e5')
blow.Variable = Color.hex('#b1b4bc')

-- local palette = pastel
local palette = blow
return palette
