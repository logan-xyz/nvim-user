local cmp = require "cmp"
local compare = require "cmp.config.compare"

return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping = {
        ["<CR>"] = cmp.mapping.confirm { select = true },
      },
      sorting = {
        priority_weight = 2,
        comparators = {
          -- compare.score_offset, -- not good at all
          -- compare.locality,
          -- compare.recently_used,
          compare.score,
          compare.offset,
          compare.order,
          -- compare.scopes, -- what?
          -- compare.sort_text,
          -- compare.exact,
          -- compare.kind,
          -- compare.length, -- useless
        },
      },
    },
  },
}
