local refactor = require("refactoring")

refactor.setup()

M = {}

M.refactors = function()
  local opts = require("telescope.themes").get_cursor() -- set personal telescope options
  require("telescope.pickers").new(opts, {
    prompt_title = "refactors",
    finder = require("telescope.finders").new_table(
        {results = require("refactoring").get_refactors()}),
    sorter = require("telescope.config").values.generic_sorter(opts),
    attach_mappings = function(_, map)
      map("i", "<CR>", refactor)
      map("n", "<CR>", refactor)
      return true
    end
  }):find()
end

local opt = {noremap = true, silent = true, expr = false}
vim.api.nvim_set_keymap("v", "<Leader>rf",
                        [[ <Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
                        opt)
vim.api.nvim_set_keymap("v", "<Leader>re",
                        [[ <Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
                        opt)
vim.api.nvim_set_keymap("v", "<Leader>ref", [[ <Cmd>lua M.refactors()<CR>]], opt)
