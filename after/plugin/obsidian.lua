local obsidian = require('obsidian')

obsidian.setup({
    workspaces = {
        {
            name = "workspace",
            path = "~/Documents/Obsidian Vault",
        }
    },
    finder = "telescope.nvim",
    sort_by = "path",
    open_obsidian_in = "current",
})
