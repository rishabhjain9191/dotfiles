require("nvim-web-devicons").setup {
  override = {
    ["test.js"] = {
      icon = "ﭧ",
      color = "#cbcb41",
      name = "JsTest"
    },
    ["spec.js"] = {
      icon = "",
      color = "#cbcb41",
      name = "JsSpec"
    },
    ["spec.ts"] = {
      icon = "",
      color = "#cbcb41",
      name = "JsSpec"
    },
    ["test.lua"] = {
      icon = "ﭧ",
      color = "#51a0cf",
      name = "LuaTest"
    },
    ["spec.lua"] = {
      icon = "",
      color = "#51a0cf",
      name = "LuaSpec"
    }
  },
  default = true
}
