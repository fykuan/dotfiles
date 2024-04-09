local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

config = {
    initial_cols = 160,
    initial_rows = 50,
    color_scheme = 'Tomorrow Night Eighties',
    font = wezterm.font_with_fallback {
        'Hack',
        'PingFang'
    },
    window_background_opacity = 1.0,
    text_background_opacity = 1.0,
    use_fancy_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,
    scrollback_lines = 1500,
}

config.colors = {
    tab_bar = {
        -- inactive_tab_edge = '#000000',
    }
}

return config
