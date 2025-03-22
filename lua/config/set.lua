vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.guicursor = ""
vim.opt.scrolloff = 5
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.swapfile = false
vim.opt.backup = false
vim.g.have_nerd_font = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes:1"

-- with .lua only for lua files
--vim.cmd [[hi @function.builtin guifg=yellow]]
