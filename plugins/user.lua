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
    event = "VeryLazy",
  },
  {
    "tpope/vim-repeat",
    event = "VeryLazy",
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
  },
  {
    "Wansmer/treesj",
    keys = {
      {
        "<leader>m",
        "<CMD>TSJToggle<CR>",
        desc = "Toggle Treesitter Join",
      },
    },
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    opts = { use_default_keymaps = false },
    event = "VeryLazy",
  },
  {
    "f-person/git-blame.nvim",
    keys = {
      {
        "<leader>gT",
        "<CMD>GitBlameToggle<CR>",
        desc = "Toggle Git Blame",
      },
    },
    event = "VeryLazy",
    config = function() vim.g.gitblame_date_format = "%r • %x" end,
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    requires = { "mfussenegger/nvim-dap" },
    event = "VeryLazy",
  },
  {
    "David-Kunz/jester",
    event = "VeryLazy",
  },
  {
    "echasnovski/mini.nvim",
    event = "VeryLazy",
    version = false,
    config = function()
      require("mini.move").setup()
      require("mini.cursorword").setup()
      -- require("mini.animate").setup {
      --   cursor = {
      --     timing = function() return 4 end,
      --   },
      --   scroll = {
      --     timing = function() return 4 end,
      --   },
      --   resize = {
      --     enable = false,
      --   },
      --   open = {
      --     enable = false,
      --   },
      --   close = {
      --     enable = false,
      --   },
      -- }
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    event = "VeryLazy",
  },
  {
    "junegunn/fzf",
    event = "VeryLazy",
    dir = "~/.fzf",
    build = "./install --all",
  },
  {
    "ggandor/leap.nvim",
    event = "VeryLazy",
    keys = {
      { "s", "<Plug>(leap-forward-to)", mode = { "n", "x", "o" }, desc = "Leap forward to" },
      { "S", "<Plug>(leap-backward-to)", mode = { "n", "x", "o" }, desc = "Leap backward to" },
      { "x", "<Plug>(leap-forward-till)", mode = { "x", "o" }, desc = "Leap forward till" },
      { "X", "<Plug>(leap-backward-till)", mode = { "x", "o" }, desc = "Leap backward till" },
      { "gs", "<Plug>(leap-from-window)", mode = { "n", "x", "o" }, desc = "Leap from window" },
    },
    config = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "LeapEnter",
        callback = function()
          vim.cmd.hi("Cursor", "blend=100")
          vim.opt.guicursor:append { "a:Cursor/lCursor" }
        end,
      })
      vim.api.nvim_create_autocmd("User", {
        pattern = "LeapLeave",
        callback = function()
          vim.cmd.hi("Cursor", "blend=0")
          vim.opt.guicursor:remove { "a:Cursor/lCursor" }
        end,
      })
    end,
  },
  {
    "mattkubej/jest.nvim",
    event = "VeryLazy",
  },
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
  },
}
