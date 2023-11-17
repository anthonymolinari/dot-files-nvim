local blame = require('gitblame')

blame.setup{
    enabled = true,
    message_template = ' <author>: <summary> | <date>',
    message_when_not_committed = ''
}

local opts = {}
vim.keymap.set('n', '<leader>gb', vim.cmd.GitBlameToggle, opts)
vim.keymap.set('n', '<leader>gtb', vim.cmd.GitBlameOpenFileURL, opts)

