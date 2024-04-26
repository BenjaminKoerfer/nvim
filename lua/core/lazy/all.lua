return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"ArbitRandomUser/latexrenderer",
	"christoomey/vim-tmux-navigator",
	"lervag/vimtex",
	"vimwiki/vimwiki",
	"ThePrimeagen/vim-be-good",
	"SirVer/ultisnips",
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		--		opts = {}
	},
	{ "numToStr/Comment.nvim", opts = {} },
}
