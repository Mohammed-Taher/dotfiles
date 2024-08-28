-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "tokyonight",
  transparency = true,
  telescope = { style = 'bordered'},
  statusline = { 
    order = {"mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor", "cwd"},
    theme = "vscode_colored",
  },

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

  cmp = { icons = true,},
  lsp = {signature = true},
}


return M
