local wezterm = require 'wezterm'
local act = wezterm.action

return {
    initial_rows = 48,
    initial_cols = 160,
    color_scheme = 'Tomorrow Night Eighties',
    font = wezterm.font 'Hack',
    window_background_opacity = 0.8,
    text_background_opacity = 0.8,
    use_fancy_tab_bar = true,
    scroll_back_lines = 1500,
}
