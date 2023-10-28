-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set colors
vim.opt.termguicolors = true

local function custom_mappings(bufnr)
    local api = require "nvim-tree.api"

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent)
    vim.keymap.set('n', '<C-b>', api.tree.toggle)
    vim.keymap.set('n', '<C-f>', api.tree.focus)
end

require('nvim-tree').setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    on_attach = custom_mappings,
})

