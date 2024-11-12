return {
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{ "ArbitRandomUser/latexrenderer", ft = "tex" },
	"christoomey/vim-tmux-navigator",
	{ "vimwiki/vimwiki" },
	"ThePrimeagen/vim-be-good",
	{ "numToStr/Comment.nvim", opts = {} },
	{ "edluffy/hologram.nvim", opts = { autodisplay = true } },
	"nvim-treesitter/playground",
	"tpope/vim-fugitive",
	{ "MaximilianLloyd/ascii.nvim", dependencies = { "MunifTanjim/nui.nvim" } },
	{ "tpope/vim-dadbod" },
	"kristijanhusak/vim-dadbod-ui",
	"kristijanhusak/vim-dadbod-completion",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-buffer",
	{
		"folke/zen-mode.nvim",
		config = function()
			vim.keymap.set("n", "<leader>zz", function()
				require("zen-mode").setup({
					window = {
						width = 90,
						options = {},
					},
				})
				require("zen-mode").toggle()
			end)
		end,
	},
	"jbyuki/nabla.nvim",
	{
		"mrcjkb/haskell-tools.nvim",
		version = "^4", -- Recommended
		lazy = false, -- This plugin is already lazy
	},
	"mfussenegger/nvim-dap",
}
