vim.g.maplocalleader = ","
return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	config = function()
		-- VimTeX configuration goes here
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_compiler_engine = "tectonic"
		vim.g.vimtex_quickfix_mode = 2
	end,
}
