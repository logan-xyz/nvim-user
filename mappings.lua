-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return function(maps)
  maps.n["-"] = maps.n["\\"]
  maps.n["\\"] = false
  maps.n["<leader>h"] = false -- remove go to dashboard keymap
  maps.n["<leader>b-"] = maps.n["<leader>b\\"]
  maps.n["<leader>b\\"] = false
  maps.n["<leader>c"] = {
    -- Open Alpha Automatically When No More Buffers
    function()
      local bufs = vim.fn.getbufinfo { buflisted = true }
      require("astronvim.utils.buffer").close(0)
      if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
    end,
    desc = "Close buffer",
  }
  maps.n["<leader>E"] = { "<cmd>:Telescope projects<CR>" }
  return maps
end
