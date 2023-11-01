local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>km', builtin.keymaps, {})
vim.keymap.set('n', '<leader>ss', builtin.current_buffer_fuzzy_find, {})

