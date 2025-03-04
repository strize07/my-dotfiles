-- lua/plugins/undotree.lua
return {
  "mbbill/undotree",
  keys = {
    { "<F5>", ":UndotreeToggle<CR>", desc = "Toggle UndoTree" },
  },
  config = function()
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
