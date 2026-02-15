return {
    "sainnhe/gruvbox-material",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        -- load the colorscheme here
        vim.g.gruvbox_material_background = 'hard'
        vim.g.gruvbox_material_foreground = 'material' -- options: 'material', 'mix', 'original'
        vim.cmd([[colorscheme gruvbox-material]])
    end,
    opts = {
        transparent = true,
        styles = {
            -- sidebars = "transparent",
            -- floats = "transparent",
        },
    },
}
