return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({})

    -- Navigate buffers
    vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>")
    vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>")
  end,
}
