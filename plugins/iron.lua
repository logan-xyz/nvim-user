return {
  "hkupty/iron.nvim",
  event = "BufEnter",
  cmd = "IronRepl",
  config = function()
    local iron = require "iron.core"
    local view = require "iron.view"

    iron.setup {
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {},
        -- How the repl window will be displayed
        -- See below for more information
        -- repl_open_cmd = require("iron.view").bottom(40),
        repl_open_cmd = view.split.vertical.botright(50),
      },
      -- Iron doesn't set keymaps by default anymore.
      -- You can set them here or manually add keymaps to the functions in iron.core
      keymaps = {
        visual_send = "<space>ss",
        send_file = "<space>sf",
        send_line = "<space>sl",
        send_mark = "<space>sm",
        mark_motion = "<space>mc",
        mark_visual = "<space>ms",
        remove_mark = "<space>md",
        cr = "<space>s<cr>",
        interrupt = "<space>s<space>",
        exit = "<space>sq",
        clear = "<space>cl",
      },
    }
  end,
}
