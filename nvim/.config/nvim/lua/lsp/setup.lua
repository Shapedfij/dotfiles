-- LSP installer setup
local lsp_installer = require("nvim-lsp-installer")
local lsp_opts = require("lsp.opts")

lsp_installer.on_server_ready(function(server)
  server:setup(lsp_opts)
  vim.cmd [[ do User LspAttachBuffers ]]
end)
