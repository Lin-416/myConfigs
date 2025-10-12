local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 35
config.window_background_opacity = 0.95
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
-- config.enable_tab_bar = false
config.use_fancy_tab_bar = false

config.color_scheme = "Catppuccin Frappe"
config.font_size = 18
config.font = wezterm.font 'Maple Mono NF CN'
config.default_cursor_style = "BlinkingBar"

return config
