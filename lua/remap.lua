---@diagnostic disable: undefined-global
vim.g.mapleader = " "

-- open a new split of the current focused window
vim.keymap.set("n", "<leader>ns", vim.cmd.split)
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
-- new tab
vim.keymap.set("n", "<leader>nn", vim.cmd.tabnew)
-- panel resize
vim.keymap.set("n", "=", [[<cmd>vertical resize +1<cr>]]) -- increase vertical
vim.keymap.set("n", "-", [[<cmd>vertical resize -1<cr>]]) -- decrease vertical
vim.keymap.set("n", "+", [[<cmd>horizontal resize +1<cr>]]) -- increase horizontal 
vim.keymap.set("n", "_", [[<cmd>horizontal resize -1<cr>]]) -- decrease horizontal

vim.keymap.set("n", "<leader>cc", [[<cmd>horizontal wincmd =<cr>]])
vim.keymap.set("n", "<leader>ww", [[<cmd>vertical wincmd =<cr>]])

-- prevent escape key from cycling buffers
vim.keymap.set("n", "<Esc>", "", { noremap = false })
