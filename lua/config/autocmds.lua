-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Configure tab spacing for java
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "java" },
  callback = function()
    vim.opt.shiftwidth = 4 -- number of spaces inserted for each indentation level
    vim.opt.tabstop = 4 -- number of spaces inserted for tab character
    vim.opt.softtabstop = 4 -- number of spaces inserted for <Tab> key
  end,
})
