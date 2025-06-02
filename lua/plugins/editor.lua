return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
      {
        ";f",
        function()
          require("fzf-lua").files({
            ["alt-i"] = { require("fzf-lua").actions.toggle_ignore },
            ["alt-h"] = { require("fzf-lua").actions.toggle_hidden },
          })
        end,
      },
      {
        ";r",
        function()
          require("fzf-lua").live_grep({
            ["alt-i"] = { require("fzf-lua").actions.toggle_ignore },
            ["alt-h"] = { require("fzf-lua").actions.toggle_hidden },
          })
        end,
      },
    },
  },
}
