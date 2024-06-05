return {
    "keaising/im-select.nvim",
    cond = function()
        -- MacOSの場合にのみtrueを返す
        return vim.fn.has('mac') == 1
    end,
    config = function()
        require('im_select').setup({
            -- IM will be set to `default_im_select` in `normal` mode
            default_im_select  = "com.apple.inputmethod.Kotoeri.RomajiTyping.Roman",

            default_command = 'im-select',

            -- Restore the default input method state when the following events are triggered
            set_default_events = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },

            -- Restore the previous used input method state when the following events
            -- are triggered, if you don't want to restore previous used im in Insert mode,
            -- e.g. deprecated `disable_auto_restore = 1`, just let it empty
            -- as `set_previous_events = {}`
            set_previous_events = { "InsertEnter" },

            -- Show notification about how to install executable binary when binary missed
            keep_quiet_on_no_binary = false,

            -- Async run `default_command` to switch IM or not
            async_switch_im = true
        })
    end,
}
