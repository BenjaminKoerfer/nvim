vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/work/scripts/tmuxsession<CR>")
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader>bd", function() vim.diagnostic.setqflist() end)
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>wa", "<cmd>wa<cr>")
vim.keymap.set("n", "<leader>wf", "<cmd>w<cr>")
-- diagnostic
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
-- lsp
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
vim.keymap.set("n", "grr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "grn", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "grd", require("telescope.builtin").lsp_definitions, { desc = "Go to definition" })
vim.keymap.set("n", "grD", vim.lsp.buf.declaration, { desc = "Go to declaration" })

-- luasnip
vim.keymap.set("i", "<C-l>", function()
  if (require("luasnip").choice_active()) then
    require("luasnip").change_choice()
  end
end)
vim.keymap.set("s", "<C-l>", function()
  if (require("luasnip").choice_active()) then
    require("luasnip").change_choice()
  end
end)
