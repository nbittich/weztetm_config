local wezterm = require("wezterm")

return {
    font = wezterm.font_with_fallback { 'CodeNewRoman Nerd Font', "JetBrains Mono" },
    font_size = 14.0,
    text_background_opacity = 1.0,
    window_background_opacity = 0.95,
    -- color_scheme = "tokyonight",
    window_padding = {
        left = "0.3cell",
        right = "0cell",
        top = "0.1cell",
        bottom = "0cell",
    },
    keys = {
        {
            key = "F11",
            action = wezterm.action.ToggleFullScreen,
        },
        {
            key = "t",
            mods = "CTRL",
            action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        },
        {
            key = "u",
            mods = "CTRL",
            action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
        },
        {
            key = "a",
            mods = "CTRL",
            action = wezterm.action.SplitPane({
                direction = "Left",
                command = { args = { "adana" } },
                size = { Percent = 30 },
            }),
        },


    },
}
