return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
      {
        ";f",
        function()
          require("fzf-lua").files()
        end,
      },
      {
        ";r",
        function()
          require("fzf-lua").live_grep()
        end,
      },
    },
  },
}
