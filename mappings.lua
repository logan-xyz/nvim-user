-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return function(local_vim)
  local_vim.n["-"] = local_vim.n["\\"]
  local_vim.n["\\"] = false
  local_vim.n["<leader>H"] = local_vim.n["<leader>h"]
  local_vim.n["<leader>h"] = false
  local_vim.n["<leader>b-"] = local_vim.n["<leader>b\\"]
  local_vim.n["<leader>b\\"] = false
  local_vim.n["<leader>c"] = {
    -- Open Alpha Automatically When No More Buffers
    function()
      local bufs = vim.fn.getbufinfo { buflisted = true }
      require("astronvim.utils.buffer").close(0)
      if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
    end,
    desc = "Close buffer",
  }

  return local_vim
end
