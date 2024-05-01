return {
	"SirVer/ultisnips",
	config = function()
		vim.api.nvim_set_var("UltiSnipsSnippetDirectories", { "UltiSnips", "my-snippets" })
		vim.g.UltiSnipsExpandTrigger = "<tab>"
		vim.g.UltiSnipsJumpForwardTrigger = "<c-k>"
		vim.g.UltiSnipsJumpBackwardTrigger = "<c-b>"
	end,
}
