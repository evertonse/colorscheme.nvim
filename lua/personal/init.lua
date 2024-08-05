local config = require('personal.config')

-- Pass setup to config module
local M = {}
M.setup = config.setup

-- Load colorscheme with a given or default style
M.load = function()
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'personal'

    local highlights = vim.tbl_extend('force', require('personal.highlight'), config.opts.overrides)
    for hl_group, hl_opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, hl_group, hl_opts)
    end
end

return M
