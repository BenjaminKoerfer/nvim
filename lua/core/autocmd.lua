-- function format_on_save()
--     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('mxGVgg=`x', true, true, true), 'n', true)
-- end
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

-- vim.cmd([[
--     augroup SaveCursorPos
--     autocmd!
--     autocmd BufWritePre * lua format_on_save()
--     augroup END
--     ]])

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	desc = "return cursor to where it was last time closing the file",
	pattern = "*",
	command = 'silent! normal! g`"zv',
})
