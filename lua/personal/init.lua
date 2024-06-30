local config = require('personal.config')
local theme = require('personal.theme')
local utils = require('personal.utils')

-- Pass setup to config module
theme.setup = config.setup

-- Load colorscheme with a given or default style
---@param style? string
theme.load = function(style)
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'personal'
    if config.opts.terminal_colors then
        utils.terminal(require('personal.colors').get_colors())
    end

    local background = style or config.opts.style
    if background then
        vim.o.background = background
    end

    theme.set_highlights(config.opts)
    theme.link_highlights()

    if config.opts.group_overrides then
        for group, val in pairs(config.opts['group_overrides']) do
            vim.api.nvim_set_hl(0, group, val)
        end
    end
end

return theme