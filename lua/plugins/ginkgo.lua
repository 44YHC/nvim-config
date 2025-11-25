return {
  "nvim-neotest/neotest",
  dependencies = { "nvim-contrib/nvim-ginkgo" },
  opts = {
    adapters = {
      ["nvim-ginkgo"] = {},
    },
  },
}
