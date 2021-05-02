local utils = require('utils')


utils.define_augroups({
    _general_settings = {
        {'TextYankPost', '*', 'lua require(\'vim.highlight\').on_yank({higroup = \'Search\', timeout = 100})'},
    },
    _markdown = {{'FileType', 'markdown', 'setlocal wrap'}, {'FileType', 'markdown', 'setlocal spell'}},
		_auto_formatters ={
				{'BufWritePre', '*.py', 'lua vim.lsp.buf.formatting_sync(nil, 100)'},
		}
})

