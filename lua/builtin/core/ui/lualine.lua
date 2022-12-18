local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols = { error = " ", warn = " " },
  colored = true,
  always_visible = false,
}

local diff = {
  "diff",
  colored = true,
  symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width,
}

local filetype = {
  "filetype",
  icons_enabled = true,
}

local lsp = {
  function(msg)
    msg = msg or " "
    local buf_clients = vim.lsp.buf_get_clients()
    if next(buf_clients) == nil then
      if type(msg) == "boolean" or #msg == 0 then
        return " "
      end
      return msg
    end

    local buf_client_names = {}
    for _, client in pairs(buf_clients) do
      if client.name ~= "null-ls" then
        table.insert(buf_client_names, client.name)
      end
    end
    local unique_client_names = vim.fn.uniq(buf_client_names)
    return " " .. table.concat(unique_client_names, ", ")
  end,
  cond = hide_in_width
}

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard", "NvimTree" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {
      { "mode", separator = { left = " ", right = "" }, right_padding = 2 },
    },
    lualine_b = { "branch" },
    lualine_c = { "filename", diagnostics },
    lualine_x = { diff, lsp },
    lualine_y = { filetype },
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

