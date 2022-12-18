local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "builtin.lsp.mason"
require("builtin.lsp.handlers").setup()
require "builtin.lsp.null-ls"
