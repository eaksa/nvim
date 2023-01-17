local servers = require "lsp.core.servers"

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("lsp.core.handlers").on_attach,
    capabilities = require("lsp.core.handlers").capabilities,
  }

  server = vim.split(server, "@")[1]

  local require_ok, conf_opts = pcall(require, "lsp.core.config." .. server)
  if require_ok then
    opts = vim.tbl_deep_extend("force", conf_opts, opts)
  end

  -- Uses custom tools instead of manually setting up lspconfig where custom
  -- tools are available
  local utils_ok, utils = pcall(require, "lsp.core.setup." .. server)
  if utils_ok then
    utils.setup(opts)
  else
    lspconfig[server].setup(opts)
  end
end
