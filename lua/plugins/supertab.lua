-- 修改blink.cmp的默认按键
return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.keymap = {
      preset = "default",
      ["<Tab>"] = { "select_and_accept" },
    }
    return opts
  end,
}
