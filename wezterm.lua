local wezterm = require("wezterm")

return {
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
