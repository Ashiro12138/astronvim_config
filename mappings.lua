-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>r"] = {
      function() vim.lsp.buf.format() end,
      desc = "Format buffer",
    },
    ["x"] = { '"_x' },
    ["X"] = { '"_X' },
    ["s"] = { '"_s' },
    ["S"] = { '"_S' },
    ["<Del>"] = { '"_x' },
    -- Change tabs
    ["<C-n>"] = { "<cmd>bn<cr>", desc = "Next buffer" },
    ["<C-p>"] = { "<cmd>bp<cr>", desc = "Previous buffer" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["p"] = { "pgvy" },
    ["P"] = { "Pgvy" },
    ["x"] = { '"_x' },
    ["X"] = { '"_X' },
    ["s"] = { '"_s' },
    ["S"] = { '"_S' },
    ["<Del>"] = { '"_x' },
  },
}
