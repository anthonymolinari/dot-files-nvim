---@diagnostic disable: undefined-global
local muren = require('muren')
muren.setup({
    -- general
    create_commands = true,
    filtype_in_preview = true,
    -- default togglable options
    two_step = false,
    all_on_line = true,
    preview = true,
    cwd = false,
    files = "**/*",
    -- keymaps
    keys = {
        close = 'q',
        toggle_side = '<Tab>',
        toggle_options_focus = '<C-s>',
        toggle_options_under_cusor = '<CR>',
        scroll_preview_up = '<Up>',
        scroll_preview_down = '<Down>',
        do_replace = '<CR>',
    },
    -- ui sizes
    patterns_width = 30,
    patterns_height = 10,
    options_width = 20,
    preview_height = 12,
    -- window positions
    anchor = 'center', -- set to one of:
    -- 'center' | 'top' | 'bottom' | 'left' | 'right' | 'top_left' | 'top_right' | 'bottom_left' | 'bottom_right'
    -- options order in ui
    order = {
        'buffer',
        'dir',
        'files',
        'two_step',
        'all_on_line',
        'preview',
    },
    -- highlights used for options ui
    hl ={
        options = {
            on = '@string',
            off = '@variable.builtin',
        },
        preview = {
            cwd = {
                path = 'Comment',
                lnum = 'Number',
            },
        },
    },
})

vim.keymap.set("n", '<leader>fr', [[<cmd>MurenOpen<cr>]], {})
