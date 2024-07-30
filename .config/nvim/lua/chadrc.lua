-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "catppuccin",
  telescope = { style = 'bordered'},
  statusline = { theme = "vscode_colored"},

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

  cmp = { icons = true,},
  lsp = {signature = true},
}


return M
