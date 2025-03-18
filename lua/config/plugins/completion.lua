return {
  {
    'saghen/blink.cmp',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'L3MON4D3/LuaSnip',
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
        default = { 'snippets', 'lsp', 'path', 'buffer' },
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },
      signature = { enabled = true },
    },
  }
}
