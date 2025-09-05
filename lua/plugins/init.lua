-- possibly use a for loop and a set to do this automatically
--require("plugins.colours")
--require("plugins.harpoon")
--require("plugins.lsp")
--require("plugins.telescope")
--require("plugins.treesitter")

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
