-- lua/config/colors.lua

local themes = { "catppuccin", "gruvbox", "tokyonight", "onedark", "monokai"}
local current = 1

function SetTheme(name)
  name = name or themes[current]
  local ok, _ = pcall(vim.cmd.colorscheme, name)
  if not ok then
    vim.notify("Theme " .. name .. " not found!", vim.log.levels.ERROR)
    return
  end
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
  print("Theme: " .. name)
end

function NextTheme()
  current = (current % #themes) + 1
  SetTheme(themes[current])
end

-- Basic UI picker (uses telescope if installed, or system picker)
function PickTheme()
  vim.ui.select(themes, { prompt = "Select theme:" }, function(choice)
    if choice then SetTheme(choice) end
  end)
end

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyDone",
  callback = function() SetTheme("catppuccin") end,
})

vim.keymap.set("n", "<leader>tt", NextTheme, { desc = "Next theme" })
vim.keymap.set("n", "<leader>tp", PickTheme, { desc = "Pick theme" })
