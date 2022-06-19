local icons_status_ok, icons = pcall(require, "nvim-nonicons")
if not icons_status_ok then
  return
end

icons.get("file")
