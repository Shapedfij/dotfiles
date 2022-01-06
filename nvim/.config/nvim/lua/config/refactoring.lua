local refactor = require('refactoring')

refactor.setup()

M = {}

M.refactors = function()
  local opts = require('telescope.themes').get_cursor() -- set personal telescope options
  require('telescope.pickers').new(opts, {
    prompt_title = 'refactors',
    finder = require('telescope.finders').new_table({ results = require('refactoring').get_refactors() }),
    sorter = require('telescope.config').values.generic_sorter(opts),
    attach_mappings = function(_, map)
      map('i', '<cr>', refactor)
      map('n', '<cr>', refactor)
      return true
    end,
  }):find()
end

local map = require('util').map
local opt = { noremap = true, silent = true, expr = false }
map('v', '<Leader>rf', [[ <cmd>lua require('refactoring').refactor('Extract Function')<cr>]], opt)
map('v', '<Leader>re', [[ <cmd>lua require('refactoring').refactor('Extract Function To File')<cr>]], opt)
map('v', '<Leader>ref', [[ <cmd>lua M.refactors()<cr>]], opt)
