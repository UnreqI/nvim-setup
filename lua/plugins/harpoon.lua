
return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
    vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

    -- Optional: AI-style example for <leader>1..<leader>9
    -- for i = 1, 9 do
    --   vim.keymap.set("n", "<leader>" .. i, function() ui.nav_file(i) end)
    -- end
  end,
}
