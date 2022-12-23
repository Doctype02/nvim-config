local fterm = require("FTerm")

local btop = fterm:new({
    ft = 'fterm_btop',
    cmd = "btop"
})

 -- Use this to toggle btop in a floating terminal
vim.keymap.set('n', '<A-b>', function()
    btop:toggle()
end)
-- Example keybindings
vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

