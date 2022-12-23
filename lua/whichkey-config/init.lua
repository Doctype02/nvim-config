local wk = require("which-key")
local mappings = {
  q = {":q<cr>", "Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Clone"},
  E = {":e ~/.config/nvim/init.lua<cr>", "Edit config"},
  f = {"Telescope find-files<cr>", "Telescope Live Grep"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
