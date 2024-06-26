local keymap = {
  n = {
    ["Y"] = "y$",
    ["<C-t>"] = "<cmd>ToggleTerm<CR>",
    ["<leader>fp"] = "<cmd>Telescope commands<CR>",
    ["<leader>fP"] = "<cmd>Telescope command_history<CR>",
    ["<leader>mk"] = "<cmd>make<CR>",
  },
  t = {
    ["<ESC>"] = [[<C-\><C-n>]],
  },
}

for mode in pairs(keymap) do
  for input, action in pairs(keymap[mode]) do
    vim.keymap.set(mode, input, action)
  end
end

-- GitHub Copilot (doesn't work in the way above)
vim.keymap.set("i", "<C-F>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
