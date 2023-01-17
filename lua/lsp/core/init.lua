local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "lsp.core.meson"
require "lsp.core.installer"
require("lsp.core.handlers").setup()
require "lsp.core.null-ls"
