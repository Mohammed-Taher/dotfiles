local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night'

config.font = wezterm.font( {family = 'JetbrainsMono Nerd Font' })

config.font_size = 12

config.window_frame = {
  font = wezterm.font( {family = 'JetbrainsMono Nerd Font', weight = 'Bold'}),
  font_size = 12,
}

config.line_height = 1.5

config.default_cursor_style = 'BlinkingBar'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_thickness = 2
config.force_reverse_video_cursor = true

local function segments_for_right_status(window)
  local date = wezterm.strftime '%a %b %-d %H:%M'
  return {
  window:active_workspace(),
    wezterm.format ( { {Text = wezterm.nerdfonts.fa_clock_o .. '  ' .. date }})
  }
end

wezterm.on('update-status', function (window)
  local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
  local segments = segments_for_right_status(window)
  local color_scheme = window:effective_config().resolved_palette
  local bg = wezterm.color.parse(color_scheme.background)
  local fg = color_scheme.foreground
  local gradient_to, gradient_from = bg
  gradient_from = gradient_to:lighten(0.2)

  local gradient = wezterm.color.gradient(
    {
      orientation = 'Horizontal',
      colors = { gradient_from, gradient_to}
    },
      #segments
  )

  local elements = {}

  for i, seg in ipairs(segments) do
    local is_first = i == 1

    if is_first then
      table.insert(elements, { Background = {Color = 'none'}})
    end
    table.insert(elements, { Foreground = { Color = gradient[i] } })
    table.insert(elements, { Text = SOLID_LEFT_ARROW})
    table.insert(elements, { Foreground = { Color = fg } })
    table.insert(elements, { Background = { Color = gradient[i] }})
    table.insert(elements, { Text = ' ' .. seg .. ' '})
  end
  window:set_right_status(wezterm.format(elements))
end)

config.keys = {
  {
    key = ',',
    mods = 'CTRL',
    action = wezterm.action.SpawnCommandInNewTab {
      cwd = wezterm.home_dir,
      args = {'nvim', wezterm.config_file },
    },
  },
  {
    key = 'u',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.CharSelect {
      copy_on_select = true,
      copy_to = 'ClipboardAndPrimarySelection',
    }
  }
}

return config
