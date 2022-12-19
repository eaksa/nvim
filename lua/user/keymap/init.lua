local M = {}

local utils = require("user.keymap.utils")
local keymaps = require("user.keymap.keybindings.global")

local default_config = { leader = "<Space>" }

M.setup = function(config)

  config = config or default_config
  utils.leader(config.leader)

  for mode, keys in pairs(keymaps) do
    utils.mode_set(mode, keys)
  end

end

return M
