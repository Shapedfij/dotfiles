local utils = require('utils')

utils.define_augroups({

    -- Yank Highlighting
    _general_settings = {
        {
            'TextYankPost', '*',
            'lua require(\'vim.highlight\').on_yank({higroup = \'Search\', timeout = 100})'
        }
    },

    _markdown = {
        {'FileType', 'markdown', 'setlocal wrap'},
        {'FileType', 'markdown', 'setlocal spell'}
    },

    -- Auto Formaters
    _auto_formatters = {
        {'BufWrite', '*.lua', 'call LuaFormat()'},
        {'BufWritePre', '*.py', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'},
        {'BufWritePre', '*.js', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'},
        {'BufWritePre', '*.js', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'},
        {'BufWritePre', '*.jsx', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'},
        {'BufWritePre', '*.ts', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'},
        {'BufWritePre', '*.tsx', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'},
        {'BufWritePre', '*.json', 'lua vim.lsp.buf.formatting_sync(nil, 1000)'},
        {'BufWritePre', '*.rb', 'lua vim.lsp.buf.formatting_sync(nil,1000)'}
    }
})
