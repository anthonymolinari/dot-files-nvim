---@diagnostic disable: undefined-global
--[[
local lp = require('latex_preview')

vim.keymap.set('n', '<leader>sp', lp.ToggleSelect, {})
vim.keymap.set('n', '<leader>pf', lp.Preview, {})
vim.keymap.set('n', '<leader>cf', lp.StopPreview, {})
vim.keymap.set('n', '<leader>op', lp.OpenPreview, {})
vim.keymap.set('n', '<leader>cp', lp.ClosePreview, {})
]]--
