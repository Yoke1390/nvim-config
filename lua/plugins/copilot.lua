local opts_chat = {
  debug = false, -- Enable debug logging
  allow_insecure = false, -- Allow insecure server connections

  model = "gpt-4", -- GPT model to use, 'gpt-3.5-turbo' or 'gpt-4'
  temperature = 0.1, -- GPT temperature

  show_folds = true, -- Shows folds for sections in chat
  show_help = true, -- Shows help message as virtual lines when waiting for user input
  auto_follow_cursor = true, -- Auto-follow cursor in chat
  auto_insert_mode = true, -- Automatically enter insert mode when opening window and if auto follow cursor is enabled on new prompt
  clear_chat_on_new_prompt = false, -- Clears chat on every new prompt
  highlight_selection = true, -- Highlight selection in the source buffer when in the chat window

  context = "buffers", -- Default context to use, 'buffers', 'buffer' or none (can be specified manually in prompt via @).
  callback = nil, -- Callback to use when ask response is received

  -- default prompts
  prompts = {
    Explain = {
      prompt = "/COPILOT_EXPLAIN 選択範囲を説明してください。",
    },
    Review = {
      prompt = "/COPILOT_REVIEW 選択範囲のコードレビューをしてください。",
      callback = function(response, source)
        -- see config.lua for implementation
      end,
    },
    Fix = {
      prompt = "/COPILOT_GENERATE このコードには問題があります。どのようなバグが存在するか説明して、修正したコードを出力してください。",
    },
    Optimize = {
      prompt = "/COPILOT_GENERATE 選択範囲のコードをパフォーマンスや可読性の観点かんら最適化してください。",
    },
    Docs = {
      prompt = "/COPILOT_GENERATE 選択範囲のコードに関するドキュメントとなるコメントを生成してください。",
    },
    Tests = {
      prompt = "/COPILOT_GENERATE 選択範囲のコードに対するテストを生成してください。",
    },
  },
}

return {
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = opts_chat,
  },
}
