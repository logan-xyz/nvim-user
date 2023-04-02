-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return function(mappings)
  local sections = {
    x = { name = "Trouble" },
  }

  mappings.n["-"] = mappings.n["\\"]
  mappings.n["\\"] = false
  -- maps.n["<leader>h"] = false -- remove go to dashboard keymap
  mappings.n["<leader>b-"] = mappings.n["<leader>b\\"]
  mappings.n["<leader>b\\"] = false
  mappings.n["<leader>c"] = {
    -- Open Alpha Automatically When No More Buffers
    function()
      local bufs = vim.fn.getbufinfo { buflisted = true }
      require("astronvim.utils.buffer").close(0)
      if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
    end,
    desc = "Close buffer",
  }

  -- Project Manager
  mappings.n["<leader>pp"] = { "<cmd>:Telescope projects<CR>", desc = "Open projects" }

  -- Resume previous telescope picker
  mappings.n["<leader>R"] = { function() require("telescope.builtin").resume() end, desc = "Resume privous picker" }

  -- Manager Buffer
  mappings.n["<leader>bb"] = false
  mappings.n["<leader>bb"] = { function() require("telescope.builtin").buffers() end, desc = "List Open buffers" }
  mappings.n["<leader>bs"] =
    { function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc = "Fuzzy search current buffer" }

  -- Clicpboard
  mappings.n["<leader>fp"] = { "<cmd>:Telescope neoclip<CR>", desc = "Clipboard" }

  -- Find spell sugguestions
  mappings.n["<leader>fs"] =
    { function() require("telescope.builtin").spell_suggest() end, desc = "Spell sugguestions" }

  -- Trouble
  mappings.n["<leader>x"] = sections.x
  mappings.n["<leader>xx"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble workspace diagnostics" }
  mappings.n["<leader>xw"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble document diagnostics" }
  mappings.n["<leader>xr"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "Trouble lsp references" }
  mappings.n["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble locallist" }
  mappings.n["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Trouble locallist" }

  return mappings
end
