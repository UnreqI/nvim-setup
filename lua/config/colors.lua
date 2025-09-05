
-- Helper to switch colorschemes and enforce transparency
function SetTheme(name)
  name = name or "catppuccin"
  vim.cmd.colorscheme(name)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Default on startup
vim.api.nvim_create_autocmd("User", {
  pattern = "LazyDone",
  callback = function()
    SetTheme("catppuccin")
  end,
})
