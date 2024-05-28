-- set vim options here (vim.<first_key>.<second_key> = value)

-- vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]])

local options = {
  opt = {
    relativenumber = false,
    number = true,
    spell = false,
    signcolumn = "auto",
    wrap = true,
  },
  g = {
    mapleader = " ",
    autoformat_enabled = true,
    cmp_enabled = true,
    autopairs_enabled = true,
    diagnostics_mode = 3,
    icons_enabled = true,
    ui_notifications_enabled = false,
    resession_enabled = false,
    copilot_no_tab_map = true,
  },
}

for first_key in pairs(options) do
  for second_key, value in pairs(options[first_key]) do
    vim[first_key][second_key] = value
  end
end

return options
