require "builtin.init"

require "opts"
require ("builtin.keymap").setup({ leader = "<Space>" })

require "autocmds"
require "colourscheme"

require "builtin.core"
require "builtin.ui"
require "builtin.autoformat"

require "lsp.core"
require "lsp.dap"
