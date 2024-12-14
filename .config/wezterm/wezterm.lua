local wezterm = require("wezterm")

config = wezterm.config_builder()

config ={
    automatically_reload_config = true,
    enable_tab_bar = true,
    color_scheme = 'Catppuccin Macchiato (Gogh)',
}

return config