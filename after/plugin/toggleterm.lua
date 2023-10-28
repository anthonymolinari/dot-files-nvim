local tg = require('toggleterm')

tg.setup{
    size = 20,
    open_mapping = [[<C-j>]],
    authchdir = false,
    auto_scroll = true,
    direction = 'horizontal',
}

local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })

function _lazygit_toggle()
    lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
