-- This file defines the catppuccin plugin for Lazy.nvim.
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        -- This is where you set the theme's options.
        -- Lazy.nvim will call this function after the plugin is loaded.
        require("catppuccin").setup({
            --transparent_background = true,
            -- You can add other configurations here if you wish.
        })
    end,
}

