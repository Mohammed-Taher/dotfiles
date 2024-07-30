require "nvchad.options"

-- add yours here!

local o = vim.o
local g = vim.g

g.lua_snippets_path = vim.fn.stdpath "config" .. "lua/lua_snippets"


o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.cmdheight = 0

-- Tex config
g.vimtex_view_method = "zathura"
g.tex_flavor='xelatex'
g.vimtex_quickfix_mode=0
o.conceallevel=1
g.tex_conceal='abdmg'

vim.g.vimtex_compile_latexmk = {
  options = {
    "-verbose",
    "-fine-line-error",
    "-synctex=1",
    "-interactions=nonstopmode",
    "-shell-escape",
    "-enable-write18"
  },
}

vim.filetype.add({
  pattern = { [".*/hyprland%.conf"] = "hyprlang" },
})
