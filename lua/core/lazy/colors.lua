return { -- You can easily change to a different colorscheme.
	"folke/tokyonight.nvim",
	name = "tokyonight",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	opts = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
	init = function()
		vim.cmd.colorscheme("tokyonight")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
}
