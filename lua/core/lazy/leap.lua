return {
	"ggandor/leap.nvim",
	config = function()
		vim.keymap.set({ "n", "x", "o" }, "ö", "<Plug>(leap-forward)")
		vim.keymap.set({ "n", "x", "o" }, "Ö", "<Plug>(leap-backward)")
		vim.keymap.set({ "n", "x", "o" }, "gö", "<Plug>(leap-from-window)")
	end,
}
