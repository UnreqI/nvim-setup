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

-- Telescope popup picker
function PickThemeTelescope()
  local pickers = require("telescope.pickers")
  local finders = require("telescope.finders")
  local conf = require("telescope.config").values
  local actions = require("telescope.actions")
  local action_state = require("telescope.actions.state")

  pickers.new({}, {
    prompt_title = "Themes",
    finder = finders.new_table { results = themes },
    sorter = conf.generic_sorter({}),
    attach_mappings = function(_, map)
      map("i", "<CR>", function(bufnr)
        local selection = action_state.get_selected_entry()
        actions.close(bufnr)
        SetTheme(selection[1])
      end)
      map("n", "<CR>", function(bufnr)
        local selection = action_state.get_selected_entry()
        actions.close(bufnr)
        SetTheme(selection[1])
      end)
      return true
    end,
  }):find()
end

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyDone",
  callback = function() SetTheme("catppuccin") end,
})

vim.keymap.set("n", "<leader>tt", NextTheme, { desc = "Next theme" })
vim.keymap.set("n", "<leader>tp", PickThemeTelescope, { desc = "Pick theme (Telescope)" })
