local actions = require('telescope.actions')

require('telescope').setup({
  defaults = {
    selection_caret = '❯ ',
    entry_prefix = '  ',
    color_devicons = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    selection_strategy = 'reset',
    sorting_strategy = 'descending',
    layout_strategy = 'horizontal',
    layout_config = { horizontal = { mirror = false }, vertical = { mirror = false } },
    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    mappings = { i = { ['<esc>'] = actions.close, ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist } },
  },
})

local M = {}

local dotfile_dir = '$HOME/.dotfiles'

M.nvim_dotfiles = function()
  require('telescope.builtin').find_files({ prompt_title = '~ VimRC ~', cwd = dotfile_dir .. '/nvim/.config/nvim' })
end

M.kitty_dotfiles = function()
  require('telescope.builtin').find_files({
    prompt_title = '~ Kitty Config ~',
    cwd = dotfile_dir .. '/kitty/.config/kitty',
  })
end

M.project_files = function()
  local opt = {} -- define here if you want to define something
  local ok = pcall(require('telescope.builtin').git_files, opt)
  if not ok then
    require('telescope.builtin').find_files(opt)
  end
end

M.lsp_code_actions = function()
  require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_cursor())
end

M.grep_string = function()
  require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ') })
end

local map = require('util').map
local opts = { noremap = true, silent = true }

-- Custom key-binding
map('n', '<Leader>vrc', "<cmd>lua require('config.telescope').nvim_dotfiles()<cr>", opts)
map('n', '<Leader>term', "<cmd>lua require('config.telescope').kitty_dotfiles()<cr>", opts)
map('n', '<C-p>', "<cmd>lua require('config.telescope').project_files()<cr>", opts)

map('n', '<Leader>ca', "<cmd>lua require('config.telescope').lsp_code_actions()<cr>", opts)
map('n', '<Leader>pf', "<cmd>lua require('config.telescope').grep_string()<cr>", opts)

-- Builtin key-binding
map('n', '<Leader>help', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
map('n', '<Leader>man', "<cmd>lua require('telescope.builtin').man_pages()<cr>", opts)
map('n', '<Leader>=', "<cmd>lua require('telescope.builtin').spell_suggest()<cr>", opts)

map('n', '<Leader>ts', "<cmd>lua require('telescope.builtin').treesitter()<cr>", opts)
map('n', '<Leader>hi', "<cmd>lua require('telescope.builtin').highlights()<cr>", opts)
map('n', '<Leader>reg', "<cmd>lua require('telescope.builtin').registers()<cr>", opts)

return M
