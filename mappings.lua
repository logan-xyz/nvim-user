-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return function(maps)
  local sections = {
    x = { name = "Trouble" },
  }

  -- Disable <leard>n to create new file
  maps.n["<leader>n"] = false

  -- Remap vertical window splitting
  maps.n["-"] = maps.n["\\"]
  maps.n["\\"] = false

  -- Disable Astronvim Comment keymap, use the Comment.vim  keymap instead
  -- https://github.com/numToStr/Comment.nvim
  maps.n["<leader>/"] = false
  maps.v["<leader>/"] = false

  -- Remap horizontal split buffer from tabline
  maps.n["<leader>b-"] = maps.n["<leader>b\\"]
  maps.n["<leader>b\\"] = false

  -- Open Alpha Automatically When No More Buffers
  maps.n["<leader>c"] = {
    function()
      local bufs = vim.fn.getbufinfo { buflisted = true }
      require("astronvim.utils.buffer").close(0)
      if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
    end,
    desc = "Close buffer",
  }

  -- Resume previous telescope picker
  maps.n["<leader>R"] = {
    function() require("telescope.builtin").resume() end,
    desc = "Resume privous picker",
  }

  -- Manager Buffer
  maps.n["<leader>bb"] = false
  maps.n["<leader>bb"] = {
    function() require("telescope.builtin").buffers() end,
    desc = "List Open buffers",
  }

  -- Finding
  maps.n["<leader>fo"]["desc"] = "Find old files"
  -- Search in current buffer
  maps.n["<leader>fs"] = {
    function() require("telescope.builtin").current_buffer_fuzzy_find() end,
    desc = "Fuzzy search current buffer",
  }
  -- Find project
  maps.n["<leader>fP"] = { "<cmd>Telescope projects<CR>", desc = "Find projects" }
  -- File browser
  maps.n["<leader>f/"] = maps.n["<leader>ff"]
  maps.n["<leader>f?"] = maps.n["<leader>fF"]

  maps.n["-"] = maps.n["\\"]
  maps.n["\\"] = false

  -- Trouble
  maps.n["<leader>x"] = sections.x
  maps.n["<leader>xx"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble workspace diagnostics" }
  maps.n["<leader>xw"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble document diagnostics" }
  maps.n["<leader>xr"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "Trouble lsp references" }
  maps.n["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble locallist" }
  maps.n["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Trouble locallist" }

  return maps
end
