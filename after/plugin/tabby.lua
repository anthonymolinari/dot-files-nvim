---@diagnostic disable: undefined-global
vim.o.showtabline = 2

local theme = {
    fill = 'TabLineFill',
    head = 'TabLine',
    current_tab = 'TabLineSel',
    tab = 'TabLine',
    win = 'Tabline',
    tail = 'TabLine',
}

require('tabby.tabline').set(function(line)
    return {
        line.tabs().foreach(function(tab)
            local hl = tab.is_current() and theme.current_tab or theme.tab
            return {
                line.sep("", hl, theme.fill),
                tab.number(),
                tab.name(),
                line.sep('', hl, theme.fill),
                hl = hl,
                margin = ' ',
            }
        end),
        line.spacer(),
        line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
            return {
                line.sep('', theme.win, theme.fill),
                win.buf_name(),
                line.sep('', theme.win, theme.fill),
                hl = theme.win,
                margin = ' ',
            }
        end),
        {
            line.sep('', theme.tail, theme.fill),
            { '', hl = theme.tail },
        },
        hl = theme.fill,
    }
end)

-- macros
local opts = { noremap = true }
vim.api.nvim_set_keymap("n", "<A-n>", ":$tabnew<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-q>", ":tabclose<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-]>", ":tabn<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-[>", ":tabp<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-<>", ":-tabmove<CR>", opts)
vim.api.nvim_set_keymap("n", "<A->>", ":+tabmove<CR>", opts)

vim.api.nvim_set_keymap("n", "<A-1>", ":tabn 1<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-2>", ":tabn 2<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-3>", ":tabn 3<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-4>", ":tabn 4<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-5>", ":tabn 5<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-6>", ":tabn 6<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-7>", ":tabn 7<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-8>", ":tabn 8<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-9>", ":tabn 9<CR>", opts)
