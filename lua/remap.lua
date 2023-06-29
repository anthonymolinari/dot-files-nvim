vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- open a new split of the current focused window
vim.keymap.set("n", "<leader>ns", vim.cmd.split) 

-- tabs stuff
-- new tab
vim.keymap.set("n", "<leader>nt", vim.cmd.tabnew) 
-- cycle tab
vim.keymap.set("n", "<leader>ct", vim.cmd.tabnext)
