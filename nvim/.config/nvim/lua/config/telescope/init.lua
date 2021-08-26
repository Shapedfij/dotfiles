local actions = require("telescope.actions")

require("telescope").setup {
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    selection_caret = "❯ ",
    entry_prefix = "  ",
    color_devicons = true,
    set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {horizontal = {mirror = false}, vertical = {mirror = false}},
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    mappings = {i = {["<esc>"] = actions.close, ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist}}
  },
  extensions = {fzy_native = {override_generic_sorter = false, override_file_sorter = true}}
}

require("telescope").load_extension("fzy_native")

local M = {}

local dotfileDir = "$HOME/.dotfiles"
M.search_dotfiles = function()
  require("telescope.builtin").find_files({prompt_title = "~ VimRC ~", cwd = dotfileDir .. "/nvim/.config/nvim"})
end

M.search_kitty_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "~ Kitty Config ~",
    cwd = dotfileDir .. "/kitty/.config/kitty"
  })
end

M.project_files = function()
  local opt = {} -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opt)
  if not ok then require"telescope.builtin".find_files(opt) end
end

-- Custom KeyBinding
local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<Leader>vrc", [[<cmd>lua require('config.telescope').search_dotfiles()<cr>]], opts)
vim.api.nvim_set_keymap("n", "<Leader>term", [[<cmd>lua require('config.telescope').search_kitty_dotfiles()<cr>]], opts)
vim.api.nvim_set_keymap("n", "<C-p>", [[<cmd>lua require('config.telescope').project_files()<cr>]], opts)

-- Builtin KeyBinding
vim.api.nvim_set_keymap("n", "<Leader>help", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], opts)
vim.api.nvim_set_keymap("n", "<Leader>man", [[<cmd>lua require('telescope.builtin').man_pages()<cr>]], opts)
vim.api.nvim_set_keymap("n", "<Leader>=", [[<cmd>lua require('telescope.builtin').spell_suggest()<cr>]], opts)

vim.api.nvim_set_keymap("n", "<Leader>ca", [[<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>]], opts)
vim.api.nvim_set_keymap("n", "<Leader>ts", [[<cmd>lua require('telescope.builtin').treesitter()<cr>]], opts)

vim.api.nvim_set_keymap("n", "<Leader>pf",
                        [[<cmd>lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep For > ")})<cr>]],
                        opts)

return M
