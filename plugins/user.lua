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
  }, {
    "f-person/git-blame.nvim",
    keys = {
      {
        '<leader>gT',
        "<CMD>GitBlameToggle<CR>",
        desc="Toggle Git Blame",
      },
    },
    event = "VeryLazy",
    config = function()
      vim.g.gitblame_date_format = '%r • %x'
    end,
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
      require('mini.animate').setup({
        cursor = {
          timing = function() return 4 end
        },
        scroll = {
          timing = function() return 4 end
        },
        resize = {
          enable = false
        },
        open = {
          enable = false
        },
        close = {
          enable = false
        }
      })
    end,
  },
  {
    'kevinhwang91/nvim-bqf',
    event = "VeryLazy"
  },
  {
    'kristijanhusak/vim-carbon-now-sh',
    event = "VeryLazy",
    config = function()
      -- vim.g.carbon_now_sh_base_url = 'http://localhost:3000'
      vim.api.nvim_set_keymap('v', '<M-p>', ':CarbonNowSh<CR>', {noremap = true})
    end
  },
  {
    "junegunn/fzf",
    event = "VeryLazy",
    dir = "~/.fzf",
    build = "./install --all",
  }
}
