local M = {
  normal = {},
  insert = {},
  visual = {},
  visual_block = {},
  term = {},
  command = {},
}

-- BASIC KEYBINDINGS --
-- Navigate windows
M.normal["<C-h>"] = { "<C-w>h" }
M.normal["<C-j>"] = { "<C-w>j" }
M.normal["<C-k>"] = { "<C-w>k" }
M.normal["<C-l>"] = { "<C-w>l" }

-- Resize windows
M.normal["<S-Up>"] = { ":resize -2<CR>" }
M.normal["<S-Down>"] = { ":resize +2<CR>" }
M.normal["<S-Left>"] = { ":vertical resize -2<CR>" }
M.normal["<S-Right>"] = { ":vertical resize +2<CR>" }

-- Buffer actions
M.normal["<S-l>"] = { "<cmd>BufferNext<CR>" }
M.normal["<S-h>"] = { "<cmd>BufferPrevious<CR>" }
M.normal["<C-p>"] = { "<cmd>BufferPin<CR>" }
M.normal["ZZ"] = { "<cmd>lua _CLOSE_BUFFER()<CR>" }

-- Always centre search results
M.normal["n"] = { "nzz" }
M.normal["N"] = { "Nzz" }

-- Quit insert mode
M.insert["jj"] = { "<ESC>" }
M.insert["jk"] = { "<ESC>" }

-- Increase or decrease indentation
M.visual["<"] = { "<gv" }
M.visual[">"] = { ">gv" }

-- Paste in visual mode
M.visual["p"] = { "_dP" }

-- EXTENDED KEYBINDINGS --
M.normal["<leader>"] = {
  keygroup = {

    ["f"] = {
      "Find",
      keygroup = {
        ["f"] = { ":Telescope find_files<CR>", "Find files" },
        ["t"] = { ":Telescope live_grep<CR>", "Live grep" },
        ["p"] = { ":Telescope projects<CR>", "Find projects" },
        ["b"] = { ":Telescope buffers<CR>", "Find buffers" },
      }
    },

    ["o"] = {
      "Open",
      keygroup = {
        ["g"] = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Open Lazygit" },
        ["s"] = { "<cmd>lua _SPOTIFY_TOGGLE()<CR>", "Open Spotify" },
      }
    },

    ["d"] = {
      "Debug",
      keygroup = {
        ["b"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle breakpoint" },
        ["c"] = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
        ["i"] = { "<cmd>lua require'dap'.step_into()<cr>", "Step into" },
        ["o"] = { "<cmd>lua require'dap'.step_over()<cr>", "Step over" },
        ["O"] = { "<cmd>lua require'dap'.step_out()<cr>", "Step out" },
        ["r"] = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle REPL" },
        ["l"] = { "<cmd>lua require'dap'.run_last()<cr>", "Run last" },
        ["u"] = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
        ["t"] = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
      }
    },

    ["c"] = {
      "Colour scheme",
      keygroup = {
        ["h"] = { "<cmd>lua _SET_STYLE('storm')<CR>", "Storm" },
        ["j"] = { "<cmd>lua _SET_STYLE('night')<CR>", "Night" },
        ["k"] = { "<cmd>lua _SET_STYLE('moon')<CR>", "Moon" },
        ["l"] = { "<cmd>lua _SET_STYLE('day')<CR>", "Day" },
      }
    },

    ["e"] = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },
    ["h"] = { "<cmd>nohlsearch<CR>", "Clear highlights" },
  }
}

M.visual_block["<leader>"] = {
  keygroup = {
    ["/"] = {
      '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>',
      "Comment/uncomment line"
    },
  }
}

return M
