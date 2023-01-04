vim.o.background = "dark"

local colorscheme = "tokyonight"

require(colorscheme).setup({
  style = "night",
  --[[ on_highlights = function(hl) ]]
  --[[   hl.CurSearch = hl.Search -- diable CurSearch as it is distracting ]]
  --[[ end, ]]
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
