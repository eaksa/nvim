require "builtin.impatient"

require "user.options"
require ("user.keymap").setup({ leader = "<Space>" })

require "builtin.packer"

require "user.autocommands"
require "user.colorscheme"

require "builtin.core"
require "lsp.core"
require "lsp.dap"
