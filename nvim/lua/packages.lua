local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use({ "ellisonleao/gruvbox.nvim" })
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use("saadparwaiz1/cmp_luasnip")
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("williamboman/mason.nvim")
	use("MunifTanjim/prettier.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("rafamadriz/friendly-snippets")
	use({ "L3MON4D3/LuaSnip", run = "make install_jsregexp" })
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("akinsho/nvim-bufferline.lua")
end)