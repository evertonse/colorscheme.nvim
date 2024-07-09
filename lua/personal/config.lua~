local config = {}

config.opts = {}

---@param user_opts? table
config.setup = function(user_opts)
    -- backwards compatibility: let users still set settings with global vars
    local global_settings_opts = {}
    -- but override global vars settings with setup() settings
    config.opts = vim.tbl_extend('force', global_settings_opts, user_opts or {})

    -- setting transparent to true removes the default background
    if config.opts.transparent then
        config.opts.color_overrides.vscBack = 'NONE'
    end
end

-- initialize config
config.setup()

return config
