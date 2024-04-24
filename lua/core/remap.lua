vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>z", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")

vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("x", "<leader>p", [["_dP]])

-- LSP
vim.keymap.set("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>")
vim.keymap.set("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")

-- resize
vim.keymap.set("n", "+", "<cmd>vertical resize +5<cr>")
vim.keymap.set("n", "-", "<cmd>vertical resize -5<cr>")

-- auto correct
vim.api.nvim_set_keymap("i", "<C-s>", "<C-g>u<Esc>[s1z=`]a<C-g>u", { noremap = true, silent = true })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- andere
vim.keymap.set("n", "<leader><Tab>", "_i<Tab><Esc>$")
vim.keymap.set("n", "<leader><S-Tab>", "_i<Bs><Esc>$")

vim.keymap.set("n", "<leader>t", "<cmd>UndotreeToggle<CR>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/work/scripts/tmuxsession<CR>")
-- vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>VimwikiToggleListItem<CR>")

vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")
