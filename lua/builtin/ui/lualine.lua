local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local bar_is_wide = function()
  return vim.fn.winwidth(0) > 80
end

local is_insert_mode = function()
  return vim.api.nvim_get_mode()["mode"] == "i"
end

local get_lsp_client = function()
  local client = vim.lsp.get_active_clients({ bufnr = 0 })[1] or {}
  if client.name == "null-ls" then return nil end
  return client.name
end

local file = {
  {
    "filename",
    file_status = true,
    path = 0,
    shorting_target = 40,
    symbols = {
      modified = " ",
      readonly = "",
      unnamed = "",
    }
  },
  {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = { error = " ", warn = " " },
    colored = true,
    always_visible = false,
    update_in_insert = true,
    cond = function() return not is_insert_mode() end,
  },
  {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = { error = " ", warn = " " },
    colored = false,
    always_visible = false,
    update_in_insert = true,
    cond = function() return is_insert_mode() end,
  },
}

local diff = {
  {
    "diff",
    colored = true,
    symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
    cond = function() return bar_is_wide() and not is_insert_mode() end,
  },
  {
    "diff",
    colored = false,
    symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
    cond = function() return bar_is_wide() and is_insert_mode() end,
  },
}

local lsp = {
  {
    "filetype",
    colored = true,
    icon_only = true,
    separator = { left = " ", right = " " },
    left_padding = 1,
    cond = function()
      return get_lsp_client() and not is_insert_mode()
    end,
  },
  {
    "filetype",
    colored = false,
    icon_only = true,
    separator = { left = " ", right = " " },
    left_padding = 1,
    cond = function()
      return get_lsp_client() and is_insert_mode()
    end,
  },
  {
    function() return "" end,
    separator = { left = " ", right = " " },
    left_padding = 1,
    cond = function() return not get_lsp_client() end,
  },
  {
    function() return get_lsp_client() or "No LSP" end,
    separator = { left = " ", right = " " },
    left_padding = 1,
    cond = function() return bar_is_wide() end,
  },
}

local c = require("tokyonight.colors").setup({ transform = true })

local theme = {}

theme.normal = {
  a = { bg = c.green, fg = c.black, gui = "bold" },
  b = { bg = c.fg_gutter, fg = c.fg_sidebar },
  c = { bg = c.black, fg = c.fg_sidebar },
}

theme.insert = {
  a = { bg = c.fg, fg = c.bg_dark, gui = "bold" },
  b = { bg = c.blue, fg = c.blue7 },
  c = { bg = c.blue7, fg = c.blue },
}

theme.command = {
  a = { bg = c.orange, fg = c.black, gui = "bold" },
}

theme.visual = {
  a = { bg = c.magenta, fg = c.black, gui = "bold" },
}

theme.replace = {
  a = { bg = c.red, fg = c.black, gui = "bold" },
}

theme.terminal = {
  a = { bg = c.green1, fg = c.black, gui = "bold" },
  b = { bg = c.bg_statusline, fg = c.bg_statusline },
  c = { bg = c.bg_statusline, fg = c.bg_statusline },
}

theme.inactive = {
  a = { bg = c.bg, fg = c.bg },
  b = { bg = c.bg, fg = c.bg },
  c = { bg = c.bg, fg = c.bg },
}

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = " ", right = " " },
    disabled_filetypes = { "alpha", "dashboard", "NvimTree" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {
      { "mode", separator = { left = "  ", right = "" }, right_padding = 1 },
    },
    lualine_b = { "branch" },
    lualine_c = file,
    lualine_x = diff,
    lualine_y = lsp,
    lualine_z = {},
  },
  inactive_sessions = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}
