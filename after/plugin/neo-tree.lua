-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local neo_tree = require('neo-tree')

neo_tree.setup({
    close_if_last_window = false,
    popup_border_style = "rounded",
    enable_fit_status = true,
    enable_diagnostics = true,
    enable_normal_mode_for_inputs = false,
    open_files_do_no_replace_types = { "terminal", "trouble", "qf" },
    sort_case_insensitive = false,
    sort_function = nil,
    window = {
        position = "float",
        mapping_options = {
            noremap = true,
            nowait = true,
        },
        mappings = {
            ["d"] = "add_directory",
            ["D"] = "delete",
            ["a"] = "add",
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["m"] = "move",
            ["q"] = "close_window",
            ["R"] = "refresh",
            ["i"] = "show_file_details",
        }
    },
})
local opts = { noremap = true, nowait = true } 

vim.keymap.set('n', '<C-b>', "<cmd>Neotree filesystem reveal left<CR>", opts)
vim.keymap.set('n', '<leader>fs', "<cmd>Neotree filesystem reveal float<CR>", opts)

