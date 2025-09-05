return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('pyright')
        vim.lsp.enable('html')
        vim.lsp.enable('cssls')
        vim.lsp.enable('ts_ls')
    end,
}

