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

  return local_vim
end
