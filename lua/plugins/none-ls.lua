return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require "null-ls"
    require("null-ls").setup({
      debug = true,
      sources = {
        null_ls.builtins.diagnostics.mypy.with({
          -- 
          extra_args = function()
              local virtual = os.getenv("virtual_env") or "/Users/yosukemaeda/.pyenv/versions/3.12.4"
              return { "--python-executable", virtual .. "/bin/python3" }
            end,
        }),
      }
    })
  end,
}
