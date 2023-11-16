require('startup').setup({
    section_1 = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        title = "title",
        margin = 5,
        content = {
            "This is:",
            "Startup.nvim",
        },
        highlight = "String",
        oldfiles_amount = 5,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        after = function()
            -- lua_command
        end,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = {1,2},
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    parts = {"section_1"}
})
