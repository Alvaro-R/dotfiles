local wezterm = require("wezterm")

config = wezterm.config_builder()

config ={
    automatically_reload_config = true,
    enable_tab_bar = true,
    color_scheme = 'Catppuccin Macchiato (Gogh)',
    font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false }),
    font_size = 18,
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
    }
}

return config