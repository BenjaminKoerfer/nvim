return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            -- theme = "ivy",
          },
        },
      }
      local ts = require('telescope.builtin')
      vim.keymap.set("n", "<leader>sf", ts.find_files)
      vim.keymap.set("n", "<leader>sn", function()
        ts.find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)
      vim.keymap.set("n", "<leader>sh", ts.help_tags)
    end,
  }
}
