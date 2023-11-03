---@diagnostic disable: undefined-global
vim.g.mapleader = " "

-- open a new split of the current focused window
vim.keymap.set("n", "<leader>ns", vim.cmd.split)
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
-- tab manipulation
vim.keymap.set("n", "<A-n>", vim.cmd.tabnew)
vim.keymap.set("n", "<A-q>", vim.cmd.tabclose)
vim.keymap.set("n", "<A-]>", vim.cmd.tabn)
vim.keymap.set("n", "<A-[>", vim.cmd.tabp)
vim.keymap.set("n", "<A-<>", [[<cmd>-tabmove<cr>]])
vim.keymap.set("n", "<A->>", [[<cmd>+tabmove<cr>]])
-- tab navigation
vim.keymap.set("n", "<A-1>", [[<cmd>tabn 1<cr>]])
vim.keymap.set("n", "<A-2>", [[<cmd>tabn 2<cr>]])
vim.keymap.set("n", "<A-3>", [[<cmd>tabn 3<cr>]])
vim.keymap.set("n", "<A-4>", [[<cmd>tabn 4<cr>]])
vim.keymap.set("n", "<A-5>", [[<cmd>tabn 5<cr>]])
vim.keymap.set("n", "<A-6>", [[<cmd>tabn 6<cr>]])
vim.keymap.set("n", "<A-7>", [[<cmd>tabn 7<cr>]])
vim.keymap.set("n", "<A-8>", [[<cmd>tabn 8<cr>]])
vim.keymap.set("n", "<A-9>", [[<cmd>tabn 9<cr>]])
-- panel resize
vim.keymap.set("n", "=", [[<cmd>vertical resize +1<cr>]]) -- increase vertical
vim.keymap.set("n", "-", [[<cmd>vertical resize -1<cr>]]) -- decrease vertical
vim.keymap.set("n", "+", [[<cmd>horizontal resize +1<cr>]]) -- increase horizontal 
vim.keymap.set("n", "_", [[<cmd>horizontal resize -1<cr>]]) -- decrease horizontal

vim.keymap.set("n", "<leader>cc", [[<cmd>horizontal wincmd =<cr>]])
vim.keymap.set("n", "<leader>vv", [[<cmd>vertical wincmd =<cr>]])

-- prevent escape key from cycling buffers
vim.keymap.set("n", "<Esc>", "", { noremap = false })
-- esc to exit insert mode for terminals
vim.keymap.set('t', '<esc>', "<C-\\><C-n>")

