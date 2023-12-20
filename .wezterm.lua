-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font_with_fallback({
	"Iosevka Nerd Font Mono",
})
config.font_size = 22
config.window_close_confirmation = "NeverPrompt"
config.hide_mouse_cursor_when_typing = true
config.adjust_window_size_when_changing_font_size = false
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
	bottom = 0,
}

-- config.window_background_opacity = 0.90
-- config.macos_window_background_blur = 20

-- and finally, return the configuration to wezterm
return config
