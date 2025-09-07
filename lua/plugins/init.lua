return { -- All plugins that we want
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"nvim-treesitter/nvim-treesitter", build= ":TSUpdate"},
    { "nvim-lua/plenary.nvim" },
    { "theprimeagen/harpoon" },
}   
