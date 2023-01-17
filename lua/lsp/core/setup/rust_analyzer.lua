local status_ok, rust_tools = pcall(require, "rust-tools")
if not status_ok then
  return rust_tools
else
  error("Failed to call rust-tools")
end
