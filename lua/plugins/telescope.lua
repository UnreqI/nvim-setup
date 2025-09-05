return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6", -- you had this in your lazy.lua
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")

    -- Keymaps
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

    -- Optional: enable git file search when you start using Git
    -- vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
  end,
}
