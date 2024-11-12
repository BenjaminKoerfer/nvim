vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.api.nvim_set_keymap("i", "<C-s>", "<C-g>u<Esc>[s1z=`]a<C-g>u", { noremap = true, silent = true })

vim.keymap.set("n", "<leader><Tab>", "_i<Tab><Esc>$")
vim.keymap.set("n", "<leader><S-Tab>", "_i<Bs><Esc>$")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/work/scripts/tmuxsession<CR>")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic key maps
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>z", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")
vim.keymap.set("n", "<leader>-", "mxI- <Esc>`x2l")
vim.keymap.set("n", "<leader>vt", "<cmd>VimtexTocToggle<CR>")
vim.keymap.set("n", "<leader>ve", "<cmd>VimtexErrors<CR>")
vim.keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "[T]odo [T]elescope" })
vim.keymap.set("n", "<leader>g", "<cmd>wa<CR>", { desc = ":wa" })
vim.keymap.set("n", "<leader>l", "<cmd>lua require('nabla').popup()<CR>")
