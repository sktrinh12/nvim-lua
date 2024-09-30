require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    bash = { "beautysh" },
    css = { "prettier" },
    scss = { "prettier" },
    python = { "black" },
    },
})

-- Set up key mapping for formatting
vim.keymap.set({ "n", "v" }, "<leader>m", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1500,
  })
end, { desc = "Format file or range (in visual mode)" })
