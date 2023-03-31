-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    autowrite = true, -- Enable autowrite
    guicursor = "i:block-blinkon0", -- Use fat cursor in insert mode
  },
  g = {},
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
