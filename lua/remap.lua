vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- open a new split of the current focused window
vim.keymap.set("n", "<leader>ns", vim.cmd.split) 
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
-- new tab
vim.keymap.set("n", "<leader>nn", vim.cmd.tabnew) 

-- terminal escape
