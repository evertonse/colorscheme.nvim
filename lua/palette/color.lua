local M = {}

---@enum METHOD
local METHOD = {
    additive = 1,
    percentage = 2,
    relative = 3, -- relative percentage
}

--- Color class for handling RGB colors
---@class Color
---@field r integer|nil
---@field g integer|nil
---@field b integer|nil
local Color = {}
Color.__index = Color

local clamp_255 = function(val)
    return math.max(math.max(0, val), math.min(255, val))
end

--- @param r float Red component (0 to 1.0)
--- @param g float Green component (0 to 1.0)
--- @param b float Blue component (0 to 1.0)
--- @return Color instance
function Color.rgb(r, g, b)
    if r > 1 or g > 1 or b > 1 then
        return Color.rgbi(r, g, b)
    end
    local self = setmetatable({}, Color)
    self.r = math.floor(r * 255 * 0.5)
    self.g = math.floor(g * 255 * 0.5)
    self.b = math.floor(b * 255 * 0.5)
    return self
end

--- @param r integer Red component (0 to 255)
--- @param g integer Green component (0 to 255)
--- @param b integer Blue component (0 to 255)
--- @return Color instance
function Color.rgbi(r, g, b)
    local self = setmetatable({}, Color)
    self.r = clamp_255(r)
    self.g = clamp_255(g)
    self.b = clamp_255(b)
    return self
end

--- Helper function to convert hex to RGB.
--- @param hex string color string (e.g., "#ffffff")
--- @return Color instance
function Color.hex(hex)
    local self = setmetatable({}, Color)
    hex = hex:gsub('#', '')
    self.r = tonumber(hex:sub(1, 2), 16)
    self.g = tonumber(hex:sub(3, 4), 16)
    self.b = tonumber(hex:sub(5, 6), 16)
    return self
end

--- Convert the color to a hex string.
--- @return string color
function Color:str()
    local function to_hex_component(value)
        return string.format('%02x', value)
    end
    return '#' .. to_hex_component(self.r) .. to_hex_component(self.g) .. to_hex_component(self.b)
end

--- Create a copy of the color.
--- @return Color instance
function Color:copy()
    return Color.rgbi(self.r, self.g, self.b)
end

--- Helper function to convert RGB to HSL.
--- @param r integer Red component (0 to 255)
--- @param g integer Green component (0 to 255)
--- @param b integer Blue component (0 to 255)
--- @return float, float, float components in hsl
local function rgb_to_hsl(r, g, b)
    r, g, b = r / 255, g / 255, b / 255
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local h, s, l = 0, 0, (max + min) / 2

    if max ~= min then
        local d = max - min
        s = l > 0.5 and d / (2 - max - min) or d / (max + min)
        if max == r then
            h = ((g - b) / d) + (g < b and 6 or 0)
        elseif max == g then
            h = (b - r) / d + 2
        elseif max == b then
            h = (r - g) / d + 4
        end
        h = h / 6
    end

    return h, s, l
end

--- Helper function to convert HSL to RGB.
--- @param h float Hue (0 to 1)
--- @param s float Saturation (0 to 1)
--- @param l float Lightness (0 to 1)
--- @return integer, integer, integer components in rgb
local function hsl_to_rgb(h, s, l)
    local function hue_to_rgb(p, q, t)
        if t < 0 then
            t = t + 1
        end
        if t > 1 then
            t = t - 1
        end
        if t < 1 / 6 then
            return p + (q - p) * 6 * t
        end
        if t < 1 / 2 then
            return q
        end
        if t < 2 / 3 then
            return p + (q - p) * (2 / 3 - t) * 6
        end
        return p
    end

    local r, g, b

    if s == 0 then
        r, g, b = l, l, l
    else
        local q = l < 0.5 and l * (1 + s) or l + s - l * s
        local p = 2 * l - q
        r = hue_to_rgb(p, q, h + 1 / 3)
        g = hue_to_rgb(p, q, h)
        b = hue_to_rgb(p, q, h - 1 / 3)
    end

    return math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5)
end

--- Adjust the brightness of the color.
--- @param value float Brightness value (0 to 1)
function Color:brightness(value)
    local h, s, l = rgb_to_hsl(self.r, self.g, self.b)
    l = clamp_255(value)
    self.r, self.g, self.b = hsl_to_rgb(h, s, l)
    return self
end

--- Adjust the saturation of the color.
--- @param value float Saturation value (0 to 1)
function Color:saturate(value)
    local h, s, l = rgb_to_hsl(self.r, self.g, self.b)
    s = clamp_255(value)
    self.r, self.g, self.b = hsl_to_rgb(h, s, l)
    return self
end

--- Get the saturation of the color.
--- @param value float Saturation value (0 to 1)
function Color:saturation()
    local _, s, _ = rgb_to_hsl(self.r, self.g, self.b)
    return s
end

--- Darken the color by reducing the lightness.
--- @param factor float Factor to darken (0 to 1)
--- @param method? METHOD
function Color:darken(factor, method)
    local h, s, l = rgb_to_hsl(self.r, self.g, self.b)
    if method == METHOD.percentage then
        l = math.max(0, l * (1 - factor))
    elseif method == METHOD.additive then
        l = math.min(1, l - factor)
    else
        l = math.min(1, l - l * factor)
    end
    self.r, self.g, self.b = hsl_to_rgb(h, s, l)
    return self
end

--- Lighten the color by increasing the lightness.
--- @param factor float Factor to lighten (0 to 1)
--- @param method? METHOD
function Color:lighten(factor, method)
    local h, s, l = rgb_to_hsl(self.r, self.g, self.b)
    if method == METHOD.percentage then
        l = math.min(1, l * (1 + factor))
    elseif method == METHOD.additive then
        l = math.min(1, l + factor)
    else
        l = math.min(1, l + (1 - l) * factor)
    end
    self.r, self.g, self.b = hsl_to_rgb(h, s, l)
    return self
end

--- @return  integer, integer, integer
function Color:hsl()
    -- local h, s, l = rgb_to_hsl(self.r, self.g, self.b)
    return rgb_to_hsl(self.r, self.g, self.b)
end

M.Color = Color
M.METHOD = METHOD
M.hsl_to_rgb = hsl_to_rgb
M.rgb_to_hsl = rgb_to_hsl

return M
