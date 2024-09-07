local Color = require('palette.color').Color
local METHOD = require('palette.color').METHOD
local palette = require('palette.pastel')

-- palette.Type = Color.rgb(75, 92, 94) -- Cephon Altera
-- palette.Type = Color.rgb(102, 95, 64) -- Cephon Altera
palette.Type = Color.rgb(64, 88, 93) -- Cephon Altera
palette.Type = Color.rgb(100, 124, 148)
palette.Type = Color.rgb(108, 126, 138)
palette.InterfaceType = palette.Type:copy():lighten(0.24, METHOD.percentage)

palette.Namespace = Color.hex('#D8E9FF')

palette.Function = Color.hex('#FFEDC0'):saturate(0.1) -- Warm palette yellow

palette.String = Color.hex('#CE9178'):saturate(0.48)

palette.Field = Color.hex('#D8E9FF')
palette.Field = Color.hex('#D1E2FF')
palette.Field = Color.hex('#c7E1Fe')
palette.Field = Color.hex('#c9E2Fe')
palette.Field = Color.hex('#c0d0e5')

palette.Variable = Color.rgbi(190, 164, 146) -- Cephon Altera
palette.Variable = Color.rgbi(165, 142, 126):darken(0.18) -- Cephon Altera
palette.Variable = Color.rgbi(165, 142, 126) -- Cephon Altera
palette.Variable = Color.rgbi(138, 128, 109) -- Cephon Altera
palette.Variable = Color.rgbi(110, 95, 80):saturate(0.08):lighten(0.22)

palette.Keyword = palette.Variable:copy():lighten(0.85)
-- c1 = '#FfFeFF',
palette.ControlFlow = palette.Keyword:copy():lighten(0.9)

palette.Background = Color.hex('#181512')
palette.Background = Color.hex('#242118')

palette.Constant = Color.hex('#D0ECC8')

return palette
