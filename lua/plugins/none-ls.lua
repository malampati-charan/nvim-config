return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },

  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"),
        require("none-ls.diagnostics.cpplint"),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.diagnostics.stylelint,
        null_ls.builtins.diagnostics.htmlhint,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>ld", vim.diagnostic.disable, { desc = "Disable diagnostics" })
    vim.keymap.set("n", "<leader>le", vim.diagnostic.enable, { desc = "Enable diagnostics" })
  end,
}
