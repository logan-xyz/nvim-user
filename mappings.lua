-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return function(maps)
  local sections = {
    x = { name = "Trouble" },
  }

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

  -- Project Manager
  maps.n["<leader>pp"] = { "<cmd>:Telescope projects<CR>", desc = "Open projects" }

  -- Resume previous telescope picker
  maps.n["<leader>R"] = { function() require("telescope.builtin").resume() end, desc = "Resume privous picker" }

  -- Manager Buffer
  maps.n["<leader>bb"] = false
  maps.n["<leader>bb"] = { function() require("telescope.builtin").buffers() end, desc = "List Open buffers" }
  maps.n["<leader>bs"] =
  { function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc = "Fuzzy search current buffer" }

  -- Clicpboard
  maps.n["<leader>fp"] = { "<cmd>:Telescope neoclip<CR>", desc = "Clipboard" }

  -- Find spell sugguestions
  maps.n["<leader>fs"] = { function() require("telescope.builtin").spell_suggest() end, desc = "Spell sugguestions" }

  -- Trouble
  maps.n["<leader>x"] = sections.x
  maps.n["<leader>xx"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble workspace diagnostics" }
  maps.n["<leader>xw"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble document diagnostics" }
  maps.n["<leader>xr"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "Trouble lsp references" }
  maps.n["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble locallist" }
  maps.n["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Trouble locallist" }

  return maps
end
