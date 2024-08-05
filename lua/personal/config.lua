local config = {}

config = {}

local default_opts = {
    overrides = {},
    transparent = true,
    dark = true,
    italic_comments = true,
}

---@param user_opts? table
config.setup = function(user_opts)
    config.opts = vim.tbl_extend('force', default_opts, user_opts or {})
end

-- initialize config
config.setup()

return config
