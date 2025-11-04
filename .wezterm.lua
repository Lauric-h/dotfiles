local wezterm = require 'wezterm'

return {
    color_scheme = 'Catppuccin Frappe',
	enable_tab_bar = false,

	font_size = 16.0,
	font = wezterm.font('JetBrains Mono'),
    window_decorations = "RESIZE",

    macos_window_background_blur = 40,
    window_background_opacity = 0.90,

    mouse_bindings = {
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
}
