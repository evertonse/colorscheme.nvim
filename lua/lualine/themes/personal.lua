local c = require('palette')

local hl = {}

-- MiniStatuslineModeNormal = { bg = c.editor.Violet },
-- MiniStatuslineModeInsert = { fg = c.text.Darkest, bg = c.editor.LightGreen },
-- MiniStatuslineModeVisual = { bg = c.editor.Selection },
-- MiniStatuslineModeCommand = { fg = c.text.Darkest, bg = c.editor.LightOrange },

hl.normal = {
    a = { bg = c.editor.Violet },
}

hl.insert = {
    a = { fg = c.text.Darkest, bg = c.editor.LightGreen },
}

hl.command = {
    a = { fg = c.text.Darkest, bg = c.editor.LightOrange },
}

hl.visual = {
    a = { bg = c.editor.Selection },
}

hl.replace = {}

hl.terminal = {}

hl.inactive = {}

return hl
