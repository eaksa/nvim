return {

  -- ===================================================================================================================================================== --
  -- =====    CORE UTILITY    ============================================================================================================================ --
  -------------------  PLUGIN  --------------------   ----------------  COMMIT  ----------------   -------------------------  DESC  -------------------------
  [ "wbthomason/packer.nvim"                      ] = "6afb67460283f0e990d35d229fd38fdc04063e0a" , -- Plugin management
  [ "nvim-lua/plenary.nvim"                       ] = "4b7e52044bbb84242158d977a50c4cbcd85070c7" , -- Core Lua functions
  [ "lewis6991/impatient.nvim"                    ] = "b842e16ecc1a700f62adb9802f8355b99b52a5a6" , -- Faster Neovim loader
  [ "hrsh7th/nvim-cmp"                            ] = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" , -- Completion
  [ "nvim-telescope/telescope.nvim"               ] = "76ea9a898d3307244dce3573392dcf2cc38f340f" , -- Fuzzy finder
  [ "ahmedkhalf/project.nvim"                     ] = "628de7e433dd503e782831fe150bb750e56e55d6" , -- Search for projects
  [ "nvim-treesitter/nvim-treesitter"             ] = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac" , -- Treesitter integration
  [ "kyazdani42/nvim-tree.lua"                    ] = "7282f7de8aedf861fe0162a559fc2b214383c51c" , -- File management

  -- ===================================================================================================================================================== --
  -- =====    COMPLETION, LSP, DAP    ==================================================================================================================== --
  -------------------  PLUGIN  --------------------   ----------------  COMMIT  ----------------   -------------------------  DESC  -------------------------
  [ "windwp/nvim-autopairs"                       ] = "4fc96c8f3df89b6d23e5092d31c866c53a346347" , -- Automatic bracket pairing
  [ "numToStr/Comment.nvim"                       ] = "97a188a98b5a3a6f9b1b850799ac078faa17ab67" , -- Automatic comment toggling
  [ "JoosepAlviste/nvim-ts-context-commentstring" ] = "32d9627123321db65a4f158b72b757bcaef1a3f4" , -- Contextual automatic commenting based on treesitter
  [ "hrsh7th/cmp-buffer"                          ] = "3022dbc9166796b644a841a02de8dd1cc1d311fa" , -- Completion for buffers
  [ "hrsh7th/cmp-path"                            ] = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" , -- Completion for paths
  [ "saadparwaiz1/cmp_luasnip"                    ] = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" , -- Completion for LuaSnip
  [ "hrsh7th/cmp-nvim-lsp"                        ] = "affe808a5c56b71630f17aa7c38e15c59fd648a8" , -- Completion for LSPs
  [ "hrsh7th/cmp-nvim-lua"                        ] = "d276254e7198ab7d00f117e88e223b4bd8c02d21" , -- Completion for Neovim API
  [ "neovim/nvim-lspconfig"                       ] = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" , -- LSP configuration
  [ "williamboman/mason.nvim"                     ] = "bfc5997e52fe9e20642704da050c415ea1d4775f" , -- LSP installer
  [ "williamboman/mason-lspconfig.nvim"           ] = "0eb7cfefbd3a87308c1875c05c3f3abac22d367c" , -- Lspconfig and Mason integration
  [ "jose-elias-alvarez/null-ls.nvim"             ] = "c0c19f32b614b3921e17886c541c13a72748d450" , -- LSP integration for formatters and linters
  [ "RRethy/vim-illuminate"                       ] = "a2e8476af3f3e993bb0d6477438aad3096512e42" , -- LSP text highlighting
  [ "mfussenegger/nvim-dap"                       ] = "6b12294a57001d994022df8acbe2ef7327d30587" , -- DAP client
  [ "rcarriga/nvim-dap-ui"                        ] = "1cd4764221c91686dcf4d6b62d7a7b2d112e0b13" , -- DAP UI
  [ "ravenxrz/DAPInstall.nvim"                    ] = "8798b4c36d33723e7bba6ed6e2c202f84bb300de" , -- DAP installer
  [ "L3MON4D3/LuaSnip"                            ] = "8f8d493e7836f2697df878ef9c128337cbf2bb84" , -- Snippet engine
  [ "rafamadriz/friendly-snippets"                ] = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" , -- Preconfigured snippet collection for multiple languages

  -- ===================================================================================================================================================== --
  -- =====    UI / UX    ================================================================================================================================= --
  -------------------  PLUGIN  --------------------   ----------------  COMMIT  ----------------   -------------------------  DESC  -------------------------
  [ "kyazdani42/nvim-web-devicons"                ] = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" , -- Dev icons
  [ "romgrk/barbar.nvim"                          ] = "de30eb4b095c7f1ae51fbcc0d01e8671e80f6b0b" , -- Tabline
  [ "moll/vim-bbye"                               ] = "25ef93ac5a87526111f43e5110675032dbcacf56" , -- Buffer closing
  [ "nvim-lualine/lualine.nvim"                   ] = "a52f078026b27694d2290e34efa61a6e4a690621" , -- Statusline
  [ "akinsho/toggleterm.nvim"                     ] = "2a787c426ef00cb3488c11b14f5dcf892bbd0bda" , -- Floating terminal
  [ "lukas-reineke/indent-blankline.nvim"         ] = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6" , -- Indentation guides
  [ "goolord/alpha-nvim"                          ] = "0bb6fc0646bcd1cdb4639737a1cee8d6e08bcc31" , -- Neovim greeter
  [ "folke/tokyonight.nvim"                       ] = "66bfc2e8f754869c7b651f3f47a2ee56ae557764" , -- Dark and light theme based on VSCode's TokyoNight
  [ "lewis6991/gitsigns.nvim"                     ] = "f98c85e7c3d65a51f45863a34feb4849c82f240f" , -- Git decorations
  [ "karb94/neoscroll.nvim"                       ] = "54c5c419f6ee2b35557b3a6a7d631724234ba97a" , -- Smooth scrolling
  [ "lukas-reineke/virt-column.nvim"              ] = "36fa3be9cba9195081e934b4f9729021726c5889" , -- Line column
  [ "folke/todo-comments.nvim"                    ] = "c1760010f46992165995aaa52ca967f473a2e8e6" , -- Highlighting for TODO, BUG, INFO, etc comments
  [ "rcarriga/nvim-notify"                        ] = "b005821516f1f37801a73067afd1cef2dbc4dfe8" , -- Notifications engine
  [ "linty-org/key-menu.nvim"                     ] = "6951c45cbb0b2add549d282b0b526d1f0322f96e" , -- Keymap menu
  [ "nvim-treesitter/nvim-treesitter-context"     ] = "5d0367be7471f50c6b5f8338521b9e851b1d177d" , -- Context for functions, expressions, etc
  [ "ethanholz/nvim-lastplace"                    ] = "ecced899435c6bcdd81becb5efc6d5751d0dc4c8" , -- Persist last position before closing

  -- ===================================================================================================================================================== --
  -- =====    COLLABORATION    ============================================================================================================================== --
  -------------------  PLUGIN  --------------------   ----------------  COMMIT  ----------------   -------------------------  DESC  -------------------------
  --[ "andweeb/presence.nvim"                       ] = "" , -- Discord presence, reserved for when I've got friends to impress
}
