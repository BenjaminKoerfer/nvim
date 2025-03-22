vim.opt.guifont = ""
vim.opt.guicursor = ""
vim.g.have_nerd_font = true
vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

vim.o.autoindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.showmode = false

-- vim.opt.clipboard = "unnamedplus"

vim.opt.breakindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

vim.opt.scrolloff = 8

vim.opt.hlsearch = true

-- vim.opt.spelllang = { "de", "en" }
vim.opt.spell = true
vim.opt.cmdheight = 0
-- vim.opt.colorcolumn = "80"
