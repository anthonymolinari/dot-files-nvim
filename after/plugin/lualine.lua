require('lualine').setup {
  options = {
    icons_enabled = true, -- fix icons 
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {''},
    lualine_b = {''},
    lualine_c = {'filename', 'FugitiveHead'},
    lualine_x = {'filetype'},
    lualine_y = {''},
    lualine_z = {}
  },
  tabline = {
    lualine_a = {'windows'},
    lualine_z = {'tabs'},
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {'neo-tree', 'mason', 'toggleterm'}
}
