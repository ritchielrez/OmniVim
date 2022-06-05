-- Setup colorizer.nvim
local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  return
end

-- Exclude some filetypes from highlighting by using `!`
colorizer.setup {
  '*'; -- Highlight all files, but customize some others.
  -- Exclusion Only makes sense if '*' is specified!
  rgb_fn   = true;        -- CSS rgb() and rgba() functions
  hsl_fn   = true;        -- CSS hsl() and hsla() functions
}
