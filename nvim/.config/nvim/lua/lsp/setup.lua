-- LSP installer setup
local lsp_installer = require("nvim-lsp-installer")

local servers = {"bashls", "cssls", "jsonls", "pyright", "html", "yamlls", "tsserver", "sumneko_lua"}

USER = vim.fn.expand("$USER")

-- Automatic Installation
for _, name in pairs(servers) do
  local ok, server = lsp_installer.get_server(name)
  -- Check that the server is supported in nvim-lsp-installer
  if ok then
    if not server:is_installed() then
      print("[nvim-lsp-installer]: Installing " .. name .. " ...")
      server:install()
    end
  end
end

-- Configuration
lsp_installer.on_server_ready(function(server)
  local default_opts = require("lsp.opts")

  -- Now we'll create a server_opts table where we'll specify our custom LSP server configuration
  local server_opts = {
    ["sumneko_lua"] = function()
      local system_name
      if vim.fn.has("mac") == 1 then
        system_name = "macOS"
      elseif vim.fn.has("unix") == 1 then
        system_name = "Linux"
      elseif vim.fn.has("win32") == 1 then
        system_name = "Windows"
      else
        print("Unsupported system for sumneko")
      end

      -- set the path to the sumneko installation
      local sumneko_root_path = vim.fn.stdpath("data") .. "/lsp_servers/sumneko_lua/extension/server"
      local sumneko_binary = sumneko_root_path .. "/bin/" .. system_name .. "/lua-language-server"

      local runtime_path = vim.split(package.path, ";")
      table.insert(runtime_path, "lua/?.lua")
      table.insert(runtime_path, "lua/?/init.lua")

      default_opts.cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"}
      default_opts.settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
            -- Setup your lua path
            path = runtime_path
          },
          diagnostics = {
            diagnostics = {
              enable = true,
              -- Get the language server to recognize the globals
              globals = {"vim", "describe", "it", "before_each", "after_each"}
            }
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
            maxPreload = 2000,
            preloadFileSize = 500
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {enable = false}
        }
      }

      return default_opts
    end
  }

  -- We check to see if any custom server_opts exist for the LSP server, if so, load them, if not, use our default_opts
  server:setup(server_opts[server.name] and server_opts[server.name]() or default_opts)
  vim.cmd([[ do User LspAttachBuffers ]])
end)

-- Diagnostic icons
local signs = {Error = " ", Warn = " ", Hint = "硫", Info = " "}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
end
