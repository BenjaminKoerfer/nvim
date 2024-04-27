vim.g.maplocalleader = " "
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
	{ "Vaisakhkm2625/hologram-math-preview.nvim", ft = "tex" },
	{
		"vhyrro/luarocks.nvim",
		priority = 1001, -- this plugin needs to run before anything else
		opts = {
			rocks = { "magick" },
		},
	},
	{
		"3rd/image.nvim",
		dependencies = { "luarocks.nvim" },
		config = function()
			-- ...
		end,
		opts = {
			backend = "kitty",
			integrations = {
				markdown = {
					enabled = true,
					clear_in_insert_mode = false,
					download_remote_images = true,
					only_render_image_at_cursor = false,
					filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
				},
				neorg = {
					enabled = true,
					clear_in_insert_mode = false,
					download_remote_images = true,
					only_render_image_at_cursor = false,
					filetypes = { "norg" },
				},
			},
			max_width = nil,
			max_height = nil,
			max_width_window_percentage = nil,
			max_height_window_percentage = 50,
			window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
			window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
			editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
			tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
			hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" }, -- render image files as images when opened
		},
	},
}
