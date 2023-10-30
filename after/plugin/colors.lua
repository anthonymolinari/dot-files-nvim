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
    elseif theme_name == "moonlight" then
        vim.cmd([[colorscheme moonlight]])
    elseif theme_name == "aquarium" then
        vim.cmd([[colorscheme aquarium]])
    elseif theme_name == "melange" then
        vim.cmd([[colorscheme melange ]])
    elseif theme_name == "catpuccin" then
        require('catpuccin').setup({
            flavour = "mocha",
            background = {
                dark = "mocha"
            },
        })
        vim.cmd([[colorscheme catpuccin ]])
    elseif theme_name == "kanagawa" then
        -- options: wave, lotus, dragon
        vim.cmd([[colorscheme kanagawa-wave]])
    end

end

use_scheme('aquarium')
