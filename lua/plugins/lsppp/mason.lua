return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
  },

  config = function()
    require("mason").setup({
      ui = {
        border = "rounded", -- Nice UI borders
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })
    require("mason-lspconfig").setup({
      ensure_installed = {
        "html",
        "lua_ls",
        "pyright",
      },
      automatic_installation = true,
    })
  end,
}
