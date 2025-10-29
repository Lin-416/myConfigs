local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 35
config.window_background_opacity = 0.01
config.macos_window_background_blur = 64
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.color_scheme = "Catppuccin Frappe"
config.font_size = 18
config.font = wezterm.font 'Maple Mono NF CN'
config.default_cursor_style = "BlinkingBar"

return config
