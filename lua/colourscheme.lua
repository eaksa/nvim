local status_ok, tokyonight = pcall(require, "tokyonight")
if not status_ok then
  return
end

local default_style = "moon"

function _SET_STYLE(style)
  if style == "day" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
  vim.cmd("colorscheme tokyonight-" .. style)
end

tokyonight.setup({
  style = default_style,
  floats = "dark",

  on_highlights = function (hl, c)
    hl.Statement = { fg = c.magenta, style = { italic = true }}
    hl.PreProc = { fg = c.cyan, style = { italic = true }}
    hl.Type = { fg = c.blue1, style = { italic = true }}
    hl.Special = { fg = c.blue1, style = { italic = true }}
    hl.Boolean = { fg = c.red }

    hl.CursorLineNr = { fg = c.dark5, style = { bold = true }}

    hl.NvimTreeFolderIcon = { fg = c.magenta }
    hl.NvimTreeGitDirty = { fg = c.yellow }

    -- Bufferline
    hl.BufferCurrent = { fg = c.fg, bg = c.bg, style = { bold = true }}
    hl.BufferCurrentMod = { fg = c.fg, bg = c.bg, style = { bold = true }}
    hl.BufferCurrentSign = { fg = c.blue, bg = c.bg, style = { bold = true }}
    hl.BufferCurrentTarget = { fg = c.red, bg = c.bg, style = { bold = true }}
    hl.BufferCurrentIndex = { fg = c.blue, bg = c.bg, style = { bold = true }}

    hl.BufferInactive = { fg = c.comment, bg = c.bg_statusline, style = { italic = true }}
    hl.BufferInactiveMod = { fg = c.comment, bg = c.bg_statusline, style = { italic = true }}
    hl.BufferInactiveTarget = { fg = c.red, bg = c.bg_statusline, style = { italic = true }}
    hl.BufferInactiveIndex = { fg = c.comment, bg = c.bg_statusline, style = { italic = true }}

    -- Status line
    hl.StatusLine = { bg = c.bg }
  end
})

vim.cmd("colorscheme tokyonight-" .. default_style)
