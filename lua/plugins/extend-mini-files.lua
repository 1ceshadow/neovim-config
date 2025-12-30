return {
  {
    "nvim-mini/mini.files",
    opts = {
      options = {
        use_as_default_explorer = true, --  mini.files设置为默认文件浏览器
      },
    },
    -- <leader>e 和 <leader>E 直接调用 mini.files（而不是默认的 snacks 残留）
    keys = {
      { "<leader>e", "<cmd>lua MiniFiles.open(vim.uv.cwd())<cr>", desc = "打开 mini.files (cwd)" },
      {
        "<leader>E",
        "<cmd>lua MiniFiles.open(vim.fn.expand('%:p:h'))<cr>",
        desc = "打开 mini.files (current file dir)",
      },
      -- 或者更常用：用 LazyVim extra 自带的 <leader>fm 和 <leader>fM
      -- { "<leader>fm", function() require("mini.files").open(vim.api.nvim_buf_get_name(0), true) end, desc = "Open mini.files (current buffer)" },
    },
    lazy = false, -- 可选：确保提前加载，避免延迟
  },
}
