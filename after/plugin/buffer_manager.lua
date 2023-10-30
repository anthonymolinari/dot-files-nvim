local buffman = require("buffer_manager.ui")
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>e', buffman.toggle_quick_menu, opts)

vim.api.nvim_command([[
autocmd FileType buffer_manager vnoremap J :m '>+1<CR>gv=gv
autocmd FileType buffer_manager vnoremap K :m '<-2<CR>gv=gv
]])
