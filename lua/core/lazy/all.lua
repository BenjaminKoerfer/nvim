return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{ "ArbitRandomUser/latexrenderer", ft = "tex" },
	"christoomey/vim-tmux-navigator",
	"vimwiki/vimwiki",
	"ThePrimeagen/vim-be-good",
	{ "numToStr/Comment.nvim", opts = {} },
	{ "edluffy/hologram.nvim", opts = { autodisplay = true } },
	"nvim-treesitter/playground",
	"tpope/vim-fugitive",
	{ "MaximilianLloyd/ascii.nvim", dependencies = {
		"MunifTanjim/nui.nvim",
	} },
	{
		"folke/zen-mode.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
}
