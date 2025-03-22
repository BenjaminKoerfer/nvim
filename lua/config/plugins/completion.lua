return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'L3MON4D3/LuaSnip',
      'Saghen/blink.compat',
    },
    version = '*',
    opts = {
      keymap = {
        preset = 'default',
        ['<C-j>'] = { 'select_and_accept', 'fallback' },
        ['<C-k>'] = { 'snippet_forward', 'fallback' },
        ['<C-b>'] = { 'snippet_backward', 'fallback' },

        ['<TAB>'] = {},
        ['<S-TAB>'] = {},
        ['<C-y>'] = {},
      },
      snippets = { preset = 'luasnip' },
      sources = {
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            -- make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100,
          },
        },
        default = function(ctx)
          local success, node = pcall(vim.treesitter.get_node)
          if success and node and vim.tbl_contains({ 'comment', 'line_comment', 'block_comment' }, node:type()) then
            return { 'buffer' }
          else
            return { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' }
          end
        end
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },
      signature = { enabled = true },
    },
  }
}
