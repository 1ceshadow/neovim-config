return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
    -- 如果 <leader>e 还残留调用 snacks，可以禁用这些键（可选）
    keys = {
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },
}
