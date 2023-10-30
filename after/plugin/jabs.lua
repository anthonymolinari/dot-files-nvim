---@diagnostic disable: undefined-global
local jabsbuff = require('jabs')

jabsbuff.setup({
    position = {'center', 'top'},
    relative = 'editor',
    clip_popup_size = false,
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
    preview_position = 'left', -- top, bottom, left, right
    preview = {
        width = 40,
        height = 60,
        border = 'single',
    },
    highlight = {
        current = 'TabLineFill',
        hidden = 'TabLineFill',
        split = 'NormalNC',
        alternate = 'TabLineFil',
    },
    symbols = {
        current = 'C',
        split = 'S',
        alternate = 'A',
        hiddle = 'H',
        locked = 'L',
        ro = 'R',
        edited = 'E',
        terminal = 'T',
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
