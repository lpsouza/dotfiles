local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'CaskaydiaCove Nerd Font'
config.window_background_opacity = 0.75
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

return config