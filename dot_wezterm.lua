-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config =  wezterm.config_builder()

  -- window_background_opacity = 0.5,
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
-- config.font = wezterm.font("Noto Nashk Arabic")
-- config.font = wezterm.font("Nerd Font Mono")

-- return {
--   font = wezterm.font_with_fallback { 'Noto Nashk Arabic', 'JetBrains Mono', 'Noto Color Emoji' },
-- }


return config
