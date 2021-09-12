M = {}

M.setup = function()
  require("lsp.setup")
  require("lsp.visual")
end

M.load_efm = function()
  require("lsp.servers.efm")
end

M.load_sumneko_lua = function()
  require("lsp.servers.sumneko_lua")
end

M.setup_flutter_tool = function()
  require("lsp.tools.flutter")
end

return M
