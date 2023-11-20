---@diagnostic disable: undefined-global
local neogit = require('neogit')

neogit.setup({
    mappings = {
        popup = {
            ["c"] = "CommitPopup",
        }
    }
})

vim.keymap.set('n', '<leader>ngs', function() neogit.open({ kind = "auto" }) end, {});
vim.keymap.set('n', '<leader>ng', function() neogit.open({ kind = "tab" }) end, {});
vim.keymap.set('n', '<leader>nc', function() neogit.open({ 'commit' }) end, {});
