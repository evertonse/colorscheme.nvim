local config = {}

config.opts = {}

---@param user_opts? table
config.setup = function(user_opts)
    config.opts = user_opts or {}

    -- setting transparent to true removes the default background
    if config.opts.transparent then
        config.opts.color_overrides.vscBack = 'NONE'
    end
end

-- initialize config
config.setup()

return config
