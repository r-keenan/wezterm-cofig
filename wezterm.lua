local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action

config.leader = { key = "s", mods = "CTRL", timeout_milliseconds = 5000 }

config.keys = {
	{ key = "r", mods = "CTRL|LEADER", action = act.SplitHorizontal },
	{ key = "d", mods = "CTRL|LEADER", action = act.SplitVertical },
	{ key = "h", mods = "CTRL|LEADER", action = act.ActivatePaneDirection("Left") },
	{ key = "j", mods = "CTRL|LEADER", action = act.ActivatePaneDirection("Down") },
	{ key = "k", mods = "CTRL|LEADER", action = act.ActivatePaneDirection("Up") },
	{ key = "l", mods = "CTRL|LEADER", action = act.ActivatePaneDirection("Right") },
}

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.8

-- coolnight theme:
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

return config
