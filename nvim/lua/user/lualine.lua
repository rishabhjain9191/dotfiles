local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local get_monorepo_package_name = require("utils").get_monorepo_package_name;

lualine.setup({
  options = {
    icons_enabled = false,
    theme = 'gruvbox',
  },
 sections = {
      lualine_c = {
        {
          get_monorepo_package_name
        }
      }
    }
})
