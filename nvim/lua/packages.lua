local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use({ "ellisonleao/gruvbox.nvim" })
	use("nvim-lualine/lualine.nvim") 
	use("nvim-lua/plenary.nvim") 
	use("onsails/lspkind-nvim")
	use("hrsh7th/cmp-buffer") 
	use("hrsh7th/cmp-nvim-lsp") 
	use("hrsh7th/nvim-cmp") 
	use("neovim/nvim-lspconfig") 
	use("saadparwaiz1/cmp_luasnip")
	use("jose-elias-alvarez/null-ls.nvim") 
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
	use("kyazdani42/nvim-web-devicons") 
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
