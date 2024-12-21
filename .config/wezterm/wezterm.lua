local wezterm = require("wezterm")

config = wezterm.config_builder()

config ={
    automatically_reload_config = true,
    send_composed_key_when_left_alt_is_pressed = false,
    send_composed_key_when_right_alt_is_pressed = true,
    use_dead_keys = false, 
    enable_tab_bar = true,
    default_cursor_style = "BlinkingBlock";
    animation_fps = 2,
    cursor_blink_ease_in = 'Linear',
    cursor_blink_ease_out = 'Linear',
    cursor_blink_rate = 500;
    cursor_thickness = "200%";

    window_decorations = "INTEGRATED_BUTTONS|RESIZE", -- POSSIBLE VALUES: "NONE", "RESIZE", "TITLE", "TITLE | RESIZE", DEFAULT: "TITLE | RESIZE"
    -- window_background_opacity = 0,
    -- macos_window_background_blur = 0, -- DEFAULT: 0
 
    color_scheme = 'Catppuccin Macchiato (Gogh)',
    font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false }),
    font_size = 14,
    background = {
        {
            source = {
                File = "/Users/alvaroroman/.dotfiles/.config/wezterm/terminal_image.jpg",
            },
            hsb = {
                hue = 1.0,
                saturation = 1.02,
                brightness = 0.25,
            },
            width = "100%",
            height = "100%", 
        },
        {
            source = {
                Color = "#282c35",
            },
            width = "100%",
            height = "100%", 
            opacity = 0.40,
        },
    },
    window_padding = {
        left = 3,
        right = 3,
        top = 0,
        bottom = 0, 
    },

    keys = {
        {
          key = 'd',
          mods = 'CMD',
          action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
        },
        {
          key = 'd',
          mods = 'CMD|SHIFT',
          action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
        },
        -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
        {
          key="LeftArrow",
          mods="OPT",
          action=wezterm.action{SendString="\x1bb"}
        },
        -- Make Option-Right equivalent to Alt-f; forward-word
        {
          key="RightArrow",
          mods="OPT",
          action=wezterm.action{SendString="\x1bf"}
        },
            -- Select next tab with cmd-opt-left/right arrow
        {
            key = 'LeftArrow',
            mods = 'CMD|OPT',
            action = wezterm.action.ActivateTabRelative(-1)
        },
        {
            key = 'RightArrow',
            mods = 'CMD|OPT',
            action = wezterm.action.ActivateTabRelative(1)
        },
            -- Select next pane with cmd-left/right arrow
        {
            key = 'LeftArrow',
            mods = 'CMD',
            action = wezterm.action.SendKey({ mods = "CTRL", key = "a" })
        },
        {
            key = 'RightArrow',
            mods = 'CMD',
            action = wezterm.action.SendKey({ mods = "CTRL", key = "e" })
        },
        {
            key = "Backspace",
            mods = "CMD",
            action = wezterm.action.SendKey({ mods = "CTRL", key = "u" })
        },
    },

}

return config