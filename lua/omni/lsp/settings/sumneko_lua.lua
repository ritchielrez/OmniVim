-- local luadev = require("lua-dev").setup({
--   lspconfig = {
--     settings = {
--       Lua = {
--         diagnostics = {
--           globals = { "vim" },
--         },
--         workspace = {
--           library = {
--             [vim.fn.expand("$VIMRUNTIME/lua")] = true,
--             [vim.fn.stdpath("config") .. "/lua"] = true,
--           },
--         },
--       },
--     },
--   }
-- }
-- )
--
return ({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
}
)
