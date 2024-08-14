return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "goimports",
        "gofumpt",
        "gomodifytags",
        "impl",
        "delve",
        "java-debug-adapter",
        "java-test",
      })

      table.insert(opts.ensure_installed, "js-debug-adapter")
    end,
  },
}
