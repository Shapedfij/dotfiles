M = {}

M.define_augroups = function(definitions) -- {{{
  -- Create autocommand groups based on the passed definitions
  --
  -- The key will be the name of the group, and each definition
  -- within the group should have:
  --    1. Trigger
  --    2. Pattern
  --    3. Text
  -- just like how they would normally be defined from Vim itself
  for group_name, definition in pairs(definitions) do
    vim.cmd("augroup " .. group_name)
    vim.cmd("autocmd!")

    for _, def in pairs(definition) do
      local command = table.concat(vim.tbl_flatten {"autocmd", def}, " ")
      vim.cmd(command)
    end

    vim.cmd("augroup END")
  end
end

_G.load = function(file)
  require("plenary.reload").reload_module(file, true)
  return require(file)
end

vim.api.nvim_set_keymap("n", "<Leader>rr", "<cmd>luafile $MYVIMRC<CR>",
                        {noremap = true, silent = true})
return M
