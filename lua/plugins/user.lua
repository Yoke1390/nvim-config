---@type LazySpec
return {
  -- == Adding Plugins ==

  "andweeb/presence.nvim",
  "sophacles/vim-processing",
  "shortcuts/no-neck-pain.nvim",

  {
    "github/copilot.vim",
    lazy=false,
  },
  {
      'nvimdev/lspsaga.nvim',
      config = function()
          require('lspsaga').setup({})
      end,
      dependencies = {
          'nvim-treesitter/nvim-treesitter', -- optional
          'nvim-tree/nvim-web-devicons',     -- optional
      }
  },
}
