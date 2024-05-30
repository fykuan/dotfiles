local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

config = {
    font = wezterm.font_with_fallback {
        'Hack',
        { family = 'Heiti TC Light', scale = 1.2 },
    },
    font_size = 12.0,
    color_scheme = 'Tomorrow Night Eighties',
    -- Window size controls
    initial_cols = 160,
    initial_rows = 50,
    -- Tab controls
    use_fancy_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,
    --Apperence controls
    text_background_opacity = 1.0,
    window_background_opacity = 1.0,
    --Scrolling controls
    scrollback_lines = 1500,
}

config.colors = {
    tab_bar = {
        -- inactive_tab_edge = '#000000',
    }
}

return config
