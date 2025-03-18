vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
vim.keymap.set("n", "grr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "grn", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/work/scripts/tmuxsession<CR>")
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader>bd", function() vim.diagnostic.setqflist() end)
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")

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
