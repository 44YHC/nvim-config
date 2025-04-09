return {
  {
    "buoto/gotests-vim",
    -- dependencies = { "nvim-lua/plenary.nvim" }, -- Add dependencies if needed
    config = function()
      -- Map :GoTests to <leader>t
      -- vim.keymap.set("n", "<leader>tt", ":GoTests<CR>", { desc = "Generate Tests Selected" })
      -- vim.keymap.set("n", "<leader>ta", ":GoTestsAll<CR>", { desc = "Generate Tests All" })
    end,
  },
}
