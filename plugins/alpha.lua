-- customize alpha options
return {
  "goolord/alpha-nvim",
  cmd = "Alpha",
  opts = function(_, dashboard)
    -- customize the dashboard header
    dashboard.section.header.val = {
      "██    ██ ██ ███    ███",
      "██    ██ ██ ████  ████",
      "██    ██ ██ ██ ████ ██",
      " ██  ██  ██ ██  ██  ██",
      "  ████   ██ ██      ██",
    }

    local button = require("astronvim.utils").alpha_button

    dashboard.section.buttons.val = {
      button("LDR S l", "➜  Load Last Session  "),
      button("LDR S f", "➜  Find Session  "),
      button("LDR p p", "➜  Find projects  "),
      button("LDR f f", "➜  Find File  "),
      button("LDR f o", "➜  Recents  "),
      button("LDR f '", "➜  Bookmarks  "),
    }

    return dashboard
  end,
  config = function(_, opts)
    require("alpha").setup(opts.config)

    vim.api.nvim_create_autocmd("UIEnter", {
      callback = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
        opts.section.footer.val = { "Loaded " .. stats.count .. " plugins   in " .. ms .. "ms" }
        opts.section.footer.opts.hl = "DashboardFooter"
      end,
    })
  end,
}
