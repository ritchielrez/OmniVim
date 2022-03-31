local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("omni.lsp.lsp-installer")
require("omni.lsp.handlers").setup()
require("omni.lsp.null-ls")
require("omni.lsp.dressing")
