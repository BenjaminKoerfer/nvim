return { -- You can easily change to a different colorscheme.
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	opts = {
		variant = "main",
		disable_background = true,
		styles = {
			italic = false,
			transparency = true,
		},
	},
	init = function()
		vim.cmd.colorscheme("rose-pine")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
}
