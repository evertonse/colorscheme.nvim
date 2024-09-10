local Color = require('palette.color').Color
local METHOD = require('palette.color').METHOD
local palette = require('palette.pastel')

-- palette.Type = Color.rgb(75, 92, 94) -- Cephon Altera
-- palette.Type = Color.rgb(102, 95, 64) -- Cephon Altera
palette.Type = Color.rgb(64, 88, 93) -- Cephon Altera
palette.Type = Color.rgb(100, 124, 148)
palette.Type = Color.rgb(108, 126, 138)
palette.InterfaceType = palette.Type:copy():lighten(0.24, METHOD.percentage)

-- '#D8E9FF'
-- '#D1E2FF'
-- '#c7E1Fe'
-- '#c9E2Fe'
-- '#c0d0e5'
palette.Namespace = Color.hex('#D8E9FF')

palette.Function = Color.hex('#FFEDBf')

palette.String = Color.hex('#CE9178'):saturate(0.48)

palette.Variable = Color.rgb(190, 164, 146) -- Cephon Altera
palette.Variable = Color.rgb(165, 142, 126):darken(0.18) -- Cephon Altera
palette.Variable = Color.rgb(165, 142, 126) -- Cephon Altera
palette.Variable = Color.rgb(138, 128, 109) -- Cephon Altera

palette.Variable = Color.rgb(159, 142, 122) -- Jblow

palette.Variable = Color.rgb(110, 95, 80):saturate(0.085):lighten(0.25)

palette.Keyword = palette.Variable:copy():lighten(0.75)
-- c1 = '#FfFeFF',
palette.ControlFlow = palette.Keyword:copy():lighten(0.9)

palette.Background = Color.hex('#181512')
palette.Background = Color.hex('#242118')

palette.Constant = Color.rgb(144, 138, 102)
palette.Constant = Color.rgb(119, 132, 100)
palette.Constant = Color.rgb(64, 88, 93) -- Cephon Altera
palette.Constant = Color.rgb(80, 100, 110)
palette.Constant = Color.rgb(80, 100, 110)
palette.Constant = Color.hex('#B5CEA8')
palette.Number = Color.hex('#D0ECC8')
palette.Comment = Color.hex('#748779'):darken(0.22):saturate(0.058)

return palette
