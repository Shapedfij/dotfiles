M = {}

M.lspconfig = require("lspconfig")

-- LSP setup
local ignore = {efm = true, sumneko_lua = true}

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local default_opts = require("lsp.opts")
  if ignore[server] ~= true then
    server:setup(default_opts)
    vim.cmd [[ do User LspAttachBuffers ]]
  end
end)

return M
