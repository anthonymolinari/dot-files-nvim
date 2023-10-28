local function use_scheme(theme_name)

    if theme_name == "rose-pine" then
        vim.cmd([[colorscheme gruvbox]])
    elseif theme_name == "everforest" then
        vim.cmd([[colorscheme everforest]])
    elseif theme_name == "gruvbox" then
        require('rose-pine').setup({
            -- 'auto' | 'main' | 'moon' | 'dawn'
            variant = 'moon',
            -- 'main' | 'moon' | 'dawn'
            dark_variant = 'moon',
            bold_vert_split = false,
            dim_nc_background = false,
            disable_background = false,
            disable_float_background = false,
            disable_italics = true,
        })
        vim.cmd([[colorscheme rose-pine]])
    end
end

use_scheme('everforest')
