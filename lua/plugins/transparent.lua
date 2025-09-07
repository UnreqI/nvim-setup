return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
        vim.g.transparent_groups = vim.list_extend(
            vim.g.transparent_groups or {},
            { "TelescopeNormal", "TelescopeBorder"}
        )
    end,
}
