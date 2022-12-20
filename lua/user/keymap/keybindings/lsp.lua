local M = {}

M.normal = {
  ["<leader>"] = {
    keygroup = {

      ["g"] = {
        "Actions",
        keygroup = {
          ["a"] = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code actions…" },
          ["D"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Jump to declaration" },
          ["d"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Jump to definition" },
          ["I"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Jump to implementation" },
          ["i"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Get info" },
          ["j"] = { "<cmd>lua vim.diagnostic.goto_next({ buffer = 0 })<CR>", "Next" },
          ["k"] = { "<cmd>lua vim.diagnostic.goto_prev({ buffer = 0 })<CR>", "Previous" },
          ["l"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Get diagnostics" },
          ["r"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "Get references" },
        },
        opts = { noremap = true, silent = true }
      },

      ["l"] = {
        "Language server",
        keygroup = {
          ["f"] = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format buffer" },
          ["i"] = { "<cmd>Mason<CR>", "Install language server…" },
          ["I"] = { "<cmd>LspInfo<CR>", "Get language server info" },
          ["r"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename all references" },
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
      ["i"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Get info" },
      ["j"] = { "<cmd>lua vim.diagnostic.goto_next({ buffer = 0 })<CR>", "Next" },
      ["k"] = { "<cmd>lua vim.diagnostic.goto_prev({ buffer = 0 })<CR>", "Previous" },
      ["l"] = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Get diagnostics" },
      ["r"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "Get references" },
    },
      opts = { noremap = true, silent = true }
  },

}

return M
