return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      vim.lsp.config('lua_ls', {})
      vim.lsp.config('jdtls', {})
      vim.lsp.config('ts_ls', {})
      vim.lsp.config('html', {})
      vim.lsp.config('nixd', {})
      vim.lsp.config('gopls', {})
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('jdtls')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('html')
      vim.lsp.enable('nixd')
      vim.lsp.enable('gopls')

      -- autocmd on LspAttach
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)

          -- check if an Lsp exists
          if not client then return end

          -- setup formating wherever possible
          -- vim.api.nvim_create_autocmd('BufWritePre', {
          --   buffer = args.buf,
          --   callback = function()
          --     pcall(function()
          --       vim.lsp.buf.format({ async = false })
          --     end)
          --   end,
          --
          -- })
        end
      })
    end,
  }
}
