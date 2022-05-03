local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	use("numToStr/Comment.nvim") -- Easily comment stuff
	use("kyazdani42/nvim-web-devicons") -- Dev icons support for neovim
	use("kyazdani42/nvim-tree.lua") -- File explorer for neovim
	use("lewis6991/impatient.nvim") -- For faster startup
	use("goolord/alpha-nvim") -- Dashboard at my startup
	use("voldikss/vim-floaterm") -- Integrated terminal like VSCODE
	-- use("vim-pandoc/vim-pandoc-syntax") -- Better markdown syntax
	-- Replaced with treesitter
	-- use("nvim-lualine/lualine.nvim") -- Bottom statusline like VSCODE
	use({
		"iamcco/markdown-preview.nvim",
		run = ":call mkdp#util#install()",
	}) -- Markdown preview in my browser
	use("ahmedkhalf/project.nvim") -- Open up folders from telescope like VSCODE

	-- My favourite colorschemes
	use("sainnhe/gruvbox-material")
	use("shaunsingh/nord.nvim")
  use("Mofiqul/dracula.nvim")

	-- Completetion and snippets
	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- Buffer completions
	use("hrsh7th/cmp-path") -- Path completions
	use("saadparwaiz1/cmp_luasnip") -- Snippet completions
	use("hrsh7th/cmp-nvim-lsp") -- Lsp completion
	use("hrsh7th/cmp-nvim-lua") -- Neovim lua api
	use("hrsh7th/cmp-nvim-lsp-signature-help") -- Lsp signature help
	use("jose-elias-alvarez/null-ls.nvim") -- For formatters and linters
	use("filipdutescu/renamer.nvim") -- Popups for renaming lsp signatures

	-- LSP
	use("neovim/nvim-lspconfig") -- Enable LSP
	use("williamboman/nvim-lsp-installer") -- Simple to use language server installer
	use("folke/lua-dev.nvim") -- Refine LSP to work better with nvim configs
	use("stevearc/dressing.nvim") -- Better visual for LSP workloads

	-- Telescope
	use("nvim-telescope/telescope.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("p00f/nvim-ts-rainbow") -- Rainbox parens, bracket pair colorizer for neovim
	use("JoosepAlviste/nvim-ts-context-commentstring") -- Helps us to comment jsx code

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
