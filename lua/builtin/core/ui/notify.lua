local status_ok, notify = pcall(require, "notify")
if not status_ok then
  return
end

vim.notify = notify

notify.setup({
  max_width = 65,
  stages = "slide",
  fps = 60,
})
