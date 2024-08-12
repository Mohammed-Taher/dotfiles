local M = {}

M.base_30 = {
  white = "#e1c1f4",
  darker_black = "#24091f",
  black = "#24091f",
  black2 = "#24091f",
  one_bg = "#24091f",
  one_bg2 = "#9d87aa",
  one_bg3 = "#9d87aa",
  grey = "#9d87aa",
  grey_fg = "#9d87aa",
  grey_fg2 = "#9d87aa",
  light_grey = "#9d87aa",
  red = "#FE8B54",
  baby_pink = "#FE8B54",
  pink = "#E278D2",
  line = "#9d87aa",
  green = "#F9A946",
  vibrant_green = "#F9A946",
  nord_blue = "#F36D9D",
  blue = "#F36D9D",
  yellow = "#A84E8A",
  sun = "#A84E8A",
  purple = "#E278D2",
  dark_purple = "#E278D2",
  teal = "#F36D9D",
  orange = "#FE8B54",
  cyan = "#F36D9D",
  statusline_bg = "#24091f",
  lightbg = "#24091f",
  pmenu_bg = "#9d87aa",
  folder_bg = "#F36D9D",
}

M.base_16 = {
  base00 = "#24091f",
  base01 = "#24091f",
  base02 = "#9d87aa",
  base03 = "#9d87aa",
  base04 = "#e1c1f4",
  base05 = "#e1c1f4",
  base06 = "#e1c1f4",
  base07 = "#e1c1f4",
  base08 = "#FE8B54",
  base09 = "#F9A946",
  base0A = "#A84E8A",
  base0B = "#F36D9D",
  base0C = "#E278D2",
  base0D = "#F28EAE",
  base0E = "#FE8B54",
  base0F = "#e1c1f4",
}

M.type = "dark"

M.polish_hl = {
  Operator = {
    fg = M.base_30.nord_blue,
  },

  ["@operator"] = {
    fg = M.base_30.nord_blue,
  },
}

return M
