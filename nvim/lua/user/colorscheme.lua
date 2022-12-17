vim.o.background = "dark"

local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

require(colorscheme).setup({
  overrides = {
    IncSearch= {fg = "yellow"}
  }
})
