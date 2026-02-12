return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "basedpyright",
        "jdtls",
        "ruff",
        "shellcheck",
        "uv",
      },
    },
  },
}
