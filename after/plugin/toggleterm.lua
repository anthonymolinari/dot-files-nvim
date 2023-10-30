local tg = require('toggleterm')

tg.setup{
    size = 20,
    open_mapping = [[<C-j>]],
    authchdir = false,
    auto_scroll = true,
    direction = 'horizontal',
}

local opts = { noremap = true, silent = true }
local Terminal = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float'})
local lazydocker = Terminal:new({ cmd = "lazydocker", hidden = true, direction = 'float'})
local ranger = Terminal:new({ cmd = "ranger", hidden = true, direction = 'float' })
local htop = Terminal:new({ cmd = "htop", hidden = true, direction = 'float' })
local basic = Terminal:new({ hidden = true, direction = 'float' })
local tab = Terminal:new({ hidden = true, direction = 'tab'})

function _lazygit_toggle()
    lazygit:toggle()
end
function _ranger_toggle()
    ranger:toggle()
end
function _lazydocker_toggle()
    lazydocker:toggle()
end
function _htop_toggle()
    htop:toggle()
end
function _basic_toggle()
    basic:toggle()
end
function _tab_toggle()
    tab:toggle()
end

vim.api.nvim_set_keymap("n", "<C-A-t>", "<cmd>lua _basic_toggle()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>lua _tab_toggle()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>l", "<cmd>lua _ranger_toggle()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>lua _lazydocker_toggle()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>lua _htop_toggle()<CR>", opts)
