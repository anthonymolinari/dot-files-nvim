---@diagnostic disable: undefined-global
local jabsbuff = require('jabs')

jabsbuff.setup({
    position = {'center', 'top'},
    relative = 'editor',
    clip_popup_size = true,
    width = 80,
    height = 20,
    border = 'single',
    offset = {
        top = 2,
        bottom = 2,
        left = 2,
        right = 2,
    },
    sort_mru = true,
    preview_position = 'bottom', -- top, bottom, left, right
    preview = {
        width = 100,
        height = 30,
        border = 'single',
    },
    highlight = {
        current = 'Title',
        hidden = 'StatusLineNC',
        split = 'WarningMsg',
        alternate = 'StatusLine',
    },
    symbols = {
        current = 'C',
        split = 'S',
        alternate = 'A',
        hidden = 'H',
        locked = 'L',
        ro = 'R',
        edited = 'E',
        terminal = 'T',
        default_file = "D",
        terminal_symbol = ">_"
    },
    keymap = {
        close = '<c-d>',
        jump = '<cr>',
        h_split = 's',
        v_split = 'S',
        preview = 'P',
    },
    use_devicons = true,
})

local opts = { noremap = true }
vim.keymap.set('n', '<leader>e', [[<cmd>JABSOpen<cr>]], opts)
