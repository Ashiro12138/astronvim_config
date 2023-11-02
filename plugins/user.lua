return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "sitiom/nvim-numbertoggle",
    event = "VeryLazy"
  },
  {
    "tpope/vim-repeat",
    event = "VeryLazy"
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy"
  },
  {
    "Wansmer/treesj",
    keys = {
      {
        "<leader>m",
        "<CMD>TSJToggle<CR>",
        desc = "Toggle Treesitter Join",
      }
    },
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    opts = { use_default_keymaps = false },
    event = "VeryLazy"
  },
  {
    "f-person/git-blame.nvim",
    keys = {
      {
        '<leader>gT',
        "<CMD>GitBlameToggle<CR>",
        desc="Toggle Git Blame",
      },
    },
    event = "VeryLazy",
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    requires = { "mfussenegger/nvim-dap" },
    event = "VeryLazy"
  },
  {
    "David-Kunz/jester",
    event = "VeryLazy"
  },
  {
    'echasnovski/mini.nvim',
    event = "VeryLazy",
    version = false,
    config = function()
      require('mini.move').setup()
      require('mini.cursorword').setup()
    end,
  },
  {
    'kevinhwang91/nvim-bqf',
    event = "VeryLazy"
  }
}
