require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "j", "gj", {noremap = true, silent = true})
map("n", "k", "gk", {noremap = true, silent = true})

vim.cmd([[
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
]])
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- TrueZen
map("n", "<leader>zn", ":TZNarrow<CR>", {})
map("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
map("n", "<leader>zf", ":TZFocus<CR>", {})
map("n", "<leader>zm", ":TZMinimalist<CR>", {})
map("n", "<leader>za", ":TZAtaraxis<CR>", {})

map("n", "<leader>cmp", function()
       vim.b.cmp_enabled = not vim.b.cmp_enabled
       require('cmp').setup.buffer { enabled = vim.b.cmp_enabled }
 end
)
