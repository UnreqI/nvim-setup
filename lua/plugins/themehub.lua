return {
    "erl-koenig/theme-hub.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
        "rktjmp/lush.nvim"
    },
    config = function()
        require("telescope").load_extension("ui-select") 
        require("theme-hub").setup({
            install_dir = vim.fn.stdpath("data") .. "/theme-hub",
            auto_install_on_select = true,
            apply_after_install = true,
            persistent = true,
        })
    end,
}
