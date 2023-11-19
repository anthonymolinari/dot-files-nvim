---@diagnostic disable: undefined-global
--[[
vim.o.updatetime = 300
vim.o.incsearch = false
vim.wo.signcolumn = 'yes'

local vgit = require('vgit')

vgit.setup()

vim.keymap.set('n', '<leader>sc', vgit.buffer_stage, {})
vim.keymap.set('n', '<leader>us', vgit.buffer_unstage, {})
vim.keymap.set('n', '<leader>sa', vgit.project_stage_all, {})
vim.keymap.set('n', '<leader>usa', vgit.project_unstage_all, {})
vim.keymap.set('n', '<leader>gs', vgit.project_diff_preview, {})
vim.keymap.set('n', '<leader>gb', vgit.buffer_blame_preview, {})
vim.keymap.set('n', '<leader>pl', vgit.project_logs_preview, {})
vim.keymap.set('n', '<leader>pc', vgit.project_commit_preview, {})
vim.keymap.set('n', '<leader>ph', vgit.project_hunks_preview, {})
vim.keymap.set('n', '<leader>pch', vgit.project_commit_preview, {})
--]]
