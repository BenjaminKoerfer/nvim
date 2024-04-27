vim.g.maplocalleader = " "
return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader>t", "<cmd>UndotreeToggle<CR>")
	end,
}
