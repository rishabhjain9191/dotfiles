local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup({
  options = {
    show_buffer_close_icons = false,
    truncate_names = false,
    show_buffer_icons = false,
    show_buffer_default_icon = false,
    show_close_icon = false,
    show_tab_indicators = false,
    always_show_bufferline = true,
    hover = {
      enabled = false,
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "g? for help",
        text_align = "left",
        separator = true,
      },
    },
  }
})
