local M = {}

M.normal = {
  ["<leader>"] = {
    keygroup = {

      ["j"] = {
        "Jump to",
        keygroup = {
          ["D"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaration" },
          ["d"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
          ["I"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementation" },
          ["r"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" },
        },
        opts = { noremap = true, silent = true }
      },

      ["D"] = {
        "Diagnostics",
        keygroup = {
          ["a"] = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code actions…" },
          ["l"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show diagnostics" },
          ["j"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next" },
          ["k"] = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous" },
        },
        opts = { noremap = true, silent = true }
      },

      ["l"] = {
        "Language server",
        keygroup = {
          ["i"] = { "<cmd>LspInfo<CR>", "Language server info" },
          ["I"] = { "<cmd>Mason<CR>", "Install language server…" },
          ["r"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename all references" },
          ["f"] = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format current buffer" },
        },
        opts = { noremap = true, silent = true }
      },
    }
  },

  ["g"] = {
    keygroup = {
      ["D"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Jump to declaration" },
      ["d"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Jump to definition" },
      ["I"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Jump to implementation" },
      ["r"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "Jump to references" },
      ["k"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show information" },
      ["l"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show diagnostics" },
    },
      opts = { noremap = true, silent = true }
  },

}

return M
