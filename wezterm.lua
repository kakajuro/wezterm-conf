local wezterm = require 'wezterm'
local config = {}

-- Global terminal stuff
config.default_prog = { 'C:/Program Files/Git/bin/bash', '-l' }
config.default_cwd = "C:/Users/Dell/Documents/Coding"

-- Editor
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold' })

-- Cursor
config.cursor_blink_rate = 1000
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_thickness = "2px"
config.default_cursor_style = "BlinkingBar"

-- Window
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.line_height = 1.2

-- Keybindings
config.keys = {
  { key = 'w', mods = 'CTRL', action = wezterm.action.ShowTabNavigator },

  { mods = 'CTRL', key = 'c', action = wezterm.action.CopyTo 'Clipboard' },
  { mods = 'CTRL', key = 'v', action = wezterm.action.PasteFrom 'Clipboard' },
  { key = 'Copy', action = wezterm.action.CopyTo 'Clipboard' },
  { key = 'Paste', action = wezterm.action.PasteFrom 'Clipboard' },
  { mods = 'CTRL', key = 'Insert', action = wezterm.action.CopyTo 'PrimarySelection' },
  { mods = 'SHIFT', key = 'Insert', action = wezterm.action.PasteFrom 'PrimarySelection' },
  { mods = 'SUPER', key = 'm', action = wezterm.action.Hide },
  { mods = 'SUPER', key = 'n', action = wezterm.action.SpawnWindow },
  { mods = 'CTRL|SHIFT', key = 'n', action = wezterm.action.SpawnWindow },
  { mods = 'ALT', key = 'Enter', action = wezterm.action.ToggleFullScreen },
  { mods = 'SUPER', key = '-', action = wezterm.action.DecreaseFontSize },
  { mods = 'CTRL', key = '-', action = wezterm.action.DecreaseFontSize },
  { mods = 'SUPER', key = '=', action = wezterm.action.IncreaseFontSize },
  { mods = 'CTRL', key = '=', action = wezterm.action.IncreaseFontSize },
  { mods = 'SUPER', key = '0', action = wezterm.action.ResetFontSize },
  { mods = 'CTRL', key = '0', action = wezterm.action.ResetFontSize },
  { mods = 'SUPER', key = 't', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { mods = 'CTRL', key = 't', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  { mods = 'SUPER|SHIFT', key = 'T', action = wezterm.action.SpawnTab 'DefaultDomain' },
  { mods = 'SUPER', key = 'w', action = wezterm.action.CloseCurrentTab { confirm = true } },
  { mods = 'SUPER', key = '1', action = wezterm.action.ActivateTab(0) },
  { mods = 'SUPER', key = '2', action = wezterm.action.ActivateTab(1) },
  { mods = 'SUPER', key = '3', action = wezterm.action.ActivateTab(2) },
  { mods = 'SUPER', key = '4', action = wezterm.action.ActivateTab(3) },
  { mods = 'SUPER', key = '5', action = wezterm.action.ActivateTab(4) },
  { mods = 'SUPER', key = '6', action = wezterm.action.ActivateTab(5) },
  { mods = 'SUPER', key = '7', action = wezterm.action.ActivateTab(6) },
  { mods = 'SUPER', key = '8', action = wezterm.action.ActivateTab(7) },
  { mods = 'SUPER', key = '9', action = wezterm.action.ActivateTab(-1) },
  { mods = 'CTRL', key = 'q', action = wezterm.action.CloseCurrentTab { confirm = true } },
  { mods = 'CTRL', key = '1', action = wezterm.action.ActivateTab(0) },
  { mods = 'CTRL', key = '2', action = wezterm.action.ActivateTab(1) },
  { mods = 'CTRL', key = '3', action = wezterm.action.ActivateTab(2) },
  { mods = 'CTRL', key = '4', action = wezterm.action.ActivateTab(3) },
  { mods = 'CTRL', key = '5', action = wezterm.action.ActivateTab(4) },
  { mods = 'CTRL', key = '6', action = wezterm.action.ActivateTab(5) },
  { mods = 'CTRL', key = '7', action = wezterm.action.ActivateTab(6) },
  { mods = 'CTRL', key = '8', action = wezterm.action.ActivateTab(7) },
  { mods = 'CTRL', key = '9', action = wezterm.action.ActivateTab(-1) },
  { mods = 'SUPER|SHIFT', key = '[', action = wezterm.action.ActivateTabRelative(-1) },
  { mods = 'CTRL|SHIFT', key = 'Tab', action = wezterm.action.ActivateTabRelative(-1) },
  { mods = 'CTRL', key = 'RightArrow', action = wezterm.action.ActivateTabRelative(1) },
  { mods = 'SUPER|SHIFT', key = ']', action = wezterm.action.ActivateTabRelative(1) },
  { mods = 'CTRL', key = 'Tab', action = wezterm.action.ActivateTabRelative(1) },
  { mods = 'CTRL', key = 'LeftArrow', action = wezterm.action.ActivateTabRelative(-1) },
  { mods = 'CTRL|SHIFT', key = 'PageUp', action = wezterm.action.MoveTabRelative(-1) },
  { mods = 'CTRL|SHIFT', key = 'PageDown', action = wezterm.action.MoveTabRelative(1) },
  { mods = 'SHIFT', key = 'PageUp', action = wezterm.action.ScrollByPage(-1) },
  { mods = 'SHIFT', key = 'PageDown', action = wezterm.action.ScrollByPage(1) },
  { mods = 'SUPER', key = 'r', action = wezterm.action.ReloadConfiguration },
  { mods = 'CTRL|SHIFT', key = 'R', action = wezterm.action.ReloadConfiguration },
  { mods = 'SUPER', key = 'h', action = wezterm.action.HideApplication },
  { mods = 'SUPER', key = 'k', action = wezterm.action.ClearScrollback 'ScrollbackOnly' },
  { mods = 'CTRL|SHIFT', key = 'K', action = wezterm.action.ClearScrollback 'ScrollbackOnly' },
  { mods = 'CTRL|SHIFT', key = 'L', action = wezterm.action.ShowDebugOverlay },
  { mods = 'CTRL|SHIFT', key = 'P', action = wezterm.action.ActivateCommandPalette },
  { mods = 'CTRL|SHIFT', key = 'U', action = wezterm.action.CharSelect },
  { mods = 'SUPER', key = 'f', action = wezterm.action.Search { CaseSensitiveString = "" } },
  { mods = 'CTRL|SHIFT', key = 'F', action = wezterm.action.Search { CaseSensitiveString = "" } },
  { mods = 'CTRL|SHIFT', key = 'X', action = wezterm.action.ActivateCopyMode },
  { mods = 'CTRL|SHIFT', key = ' ', action = wezterm.action.QuickSelect },
  { mods = 'CTRL|SHIFT|ALT', key = '"', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  { mods = 'CTRL|SHIFT|ALT', key = '%', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { mods = 'CTRL|SHIFT|ALT', key = 'LeftArrow', action = wezterm.action.AdjustPaneSize { 'Left', 1 } },
  { mods = 'CTRL|SHIFT|ALT', key = 'RightArrow', action = wezterm.action.AdjustPaneSize { 'Right', 1 } },
  { mods = 'CTRL|SHIFT|ALT', key = 'UpArrow', action = wezterm.action.AdjustPaneSize { 'Up', 1 } },
  { mods = 'CTRL|SHIFT|ALT', key = 'DownArrow', action = wezterm.action.AdjustPaneSize { 'Down', 1 } },
  { mods = 'CTRL|SHIFT', key = 'LeftArrow', action = wezterm.action.ActivatePaneDirection 'Left' },
  { mods = 'CTRL|SHIFT', key = 'RightArrow', action = wezterm.action.ActivatePaneDirection 'Right' },
  { mods = 'CTRL|SHIFT', key = 'UpArrow', action = wezterm.action.ActivatePaneDirection 'Up' },
  { mods = 'CTRL|SHIFT', key = 'DownArrow', action = wezterm.action.ActivatePaneDirection 'Down' },
  { mods = 'CTRL|SHIFT', key = 'Z', action = wezterm.action.TogglePaneZoomState },
}

return config
