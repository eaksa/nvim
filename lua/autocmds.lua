-- Set relative line numbering except in insert mode
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "CmdlineLeave", "WinEnter" }, {
  pattern = "*",
  callback = function()
    if vim.o.nu and vim.api.nvim_get_mode().mode ~= "i" then
      vim.opt.relativenumber = true
    end
  end,
})

-- Set absolute line numbering in insert mode
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "CmdlineEnter", "WinLeave" }, {
  pattern = "*",
  callback = function()
    if vim.o.nu then
      vim.opt.relativenumber = false
      vim.cmd "redraw"
    end
  end,
})

-- Use "q" to quit from common plugins
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
	callback = function()
		vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR> 
      set nobuflisted 
    ]])
	end,
})

-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

-- Quit Neovim when a quit command is received (eg, ZZ)
-- vim.cmd("autocmd BufEnter * ++nested if winnr("$") == 1 && bufname() == "NvimTree_" . tabpagenr() | quit | endif")

vim.api.nvim_create_autocmd({ "VimResized" }, {
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})

-- Disable command window
vim.api.nvim_create_autocmd({ "CmdWinEnter" }, {
	callback = function()
		vim.cmd("quit")
	end,
})

-- Highlight yanked text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})

-- Refresh codelens when saving Java file
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.java" },
	callback = function()
		vim.lsp.codelens.refresh()
	end,
})

-- LSP highlighting
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		vim.cmd("hi link illuminatedWord LspReferenceText")
	end,
})

-- Pause highlighting when file becomes too large
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
	local line_count = vim.api.nvim_buf_line_count(0)
		if line_count >= 5000 then
			vim.cmd("IlluminatePauseBuf")
		end
	end,
})

-- Offset bufferline if nvim-tree is visible
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = "*",
  callback = function()
    local nvim_tree = require("nvim-tree.view")
    if nvim_tree.is_visible() then
      require("bufferline.api").set_offset(31, "")
    end
  end
})

-- Don't offset bufferline if nvim-tree is not visible
vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  pattern = "*",
  callback = function()
    if vim.fn.expand("<afile>"):match("NvimTree") then
      require("bufferline.api").set_offset(0)
    end
  end
})
