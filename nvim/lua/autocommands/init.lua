local utils = require('utils')

utils.define_augroups({

    -- Yank Highlighting
    _general_settings = {
        {'TextYankPost', '*', 'lua require(\'vim.highlight\').on_yank({higroup = \'Search\', timeout = 100})'},
    },

    _markdown = {{'FileType', 'markdown', 'setlocal wrap'}, {'FileType', 'markdown', 'setlocal spell'}},

		-- Auto Formaters
		_auto_formatters ={

				-- Python
				{'BufWritePre', '*.py', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'},
		}
})

