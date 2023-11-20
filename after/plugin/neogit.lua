---@diagnostic disable: undefined-global
local neogit = require('neogit')

neogit.setup()

vim.keymap.set('n', '<leader>ng', neogit.open, {});
vim.keymap.set('n', '<leader>nc', function() neogit.open({ 'commit' }) end, {});
