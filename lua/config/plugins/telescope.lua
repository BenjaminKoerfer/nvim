return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            -- theme = "ivy",
          },
        },
        extensions = {
          fzf = {},
        },
      }

      require('telescope').load_extension('fzf')

      local ts = require('telescope.builtin')
      vim.keymap.set("n", "<leader>sf", ts.find_files)
      vim.keymap.set("n", "<leader>sn", function()
        ts.find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)
      vim.keymap.set("n", "<leader>sh", ts.help_tags)
      vim.keymap.set("n", "<leader>sp", function()
        ts.find_files {
          cwd = vim.fs.joinpath(vim.fn.stdpath('data'), 'lazy')
        }
      end)
      vim.keymap.set("n", "<leader>sd", ts.diagnostics)
      vim.keymap.set("n", "<leader>/", function()
        ts.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
          winblend = 10,
          previewer = false,
        }))
      end, { desc = "[/] Fuzzily search in current buffer" })
      require "config.telescope.multigrep".setup()
    end,
  }
}
