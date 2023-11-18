---@diagnostic disable: undefined-global
local blame = require('gitblame')

blame.setup{
    enabled = true,
    message_template = ' <summary> • <date> • <author>',
    message_when_not_committed = '',
    date_format = '%r'
}

local opts = {}
vim.keymap.set('n', '<leader>gb', vim.cmd.GitBlameToggle, opts)
vim.keymap.set('n', '<leader>gtb', vim.cmd.GitBlameOpenFileURL, opts)

