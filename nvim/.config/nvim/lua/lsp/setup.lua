-- LSP installer setup
local lsp_installer = require("nvim-lsp-installer")

local servers = {"bashls", "cssls", "jsonls", "pyright", "html", "yamlls", "lemminx", "tsserver", "sumneko_lua"}

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
            -- Get the language server to recognize the `vim` global
            globals = {"vim"}
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
    end,

    ["efm"] = function()
      local flake8 = {
        lintCommand = "flake8 --stdin-display-name ${INPUT} -",
        lintStdin = true,
        lintFormats = {"%f=%l:%c: %m"}
      }
      default_opts.cmd = {
        vim.fn.stdpath("data") .. "/lsp_servers/efm/efm-langserver", "-c",
        -"/home/" .. USER .. "/.config/efm-langserver/config.yaml"
      }
      default_opts.flags = {debounce_text_changes = 150}
      default_opts.init_options = {documentFormatting = true}
      default_opts.filetypes = {"python"}
      default_opts.settings = {rootMarkers = {".git/"}, languages = {python = {flake8}}}

      return default_opts
    end
  }

  -- We check to see if any custom server_opts exist for the LSP server, if so, load them, if not, use our default_opts
  server:setup(server_opts[server.name] and server_opts[server.name]() or default_opts)
  vim.cmd([[ do User LspAttachBuffers ]])
end)
