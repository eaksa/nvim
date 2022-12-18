local status_ok, nvim_lastplace = pcall(require, "nvim-lastplace")
if not status_ok then
  return
end

nvim_lastplace.setup()
