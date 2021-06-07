local actions = require("telescope.actions")

require("telescope").setup {
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    prompt_position = "bottom",
    prompt_prefix = " 🔍 ",
    selection_caret = " 👉 ",
    entry_prefix = "  ",
    color_devicons = true,
    set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {mirror = false},
      vertical = {mirror = false}
    },
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
      }
    }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true
    }
  }
}

require("telescope").load_extension("fzy_native")

local M = {}

M.search_dotfiles = function()
  require("telescope.builtin").find_files({prompt_title = "~ VimRC ~", cwd = "$HOME/.config/nvim/"})
end

-- Custom KeyBinding

vim.api.nvim_set_keymap(
  "n",
  "<Leader>vrc",
  [[<cmd>lua require('telescope-cfg').search_dotfiles()<cr>]],
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "n",
  "<C-p>",
  [[<cmd>lua require('telescope.builtin').git_files()<cr>]],
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>p",
  [[<cmd>lua require('telescope.builtin').find_files()<cr>]],
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader><Tab>",
  [[<cmd>lua require('telescope.builtin').buffers()<cr>]],
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>pf",
  [[<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<cr>]],
  {noremap = true, silent = true}
)

return M
