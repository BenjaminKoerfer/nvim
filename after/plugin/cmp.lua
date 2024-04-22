local cmp = require("cmp")
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()
-- luasnip.config.setup {}
luasnip.config.set_config({
	history = true,
	enable_autosnippets = true,
	updateevents = "TextChanged,TextChangedI",
})

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	--  completion = {
	--    completeopt = 'menu,menuone,noinsert'
	--  },
	mapping = cmp.mapping.preset.insert({
		["<c-n>"] = cmp.mapping.select_next_item(),
		["<c-p>"] = cmp.mapping.select_prev_item(),
		["<c-Space>"] = cmp.mapping.complete({}),
		["<c-k>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<c-b>"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<c-j>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<c-l>"] = cmp.mapping(function(fallback)
			if luasnip.choice_active() then
				luasnip.change_choice(1)
			else
				fallback()
			end
		end, { "i", "s" }),

		-- disable tab completion
		["<Tab>"] = cmp.config.disable,
		["<S-Tab>"] = cmp.config.disable,
	}),
	sources = {
		{ name = "luasnip" },
		{ name = "ultisnips" },
		{ name = "nvim_lua" },
		{ name = "nvim_lsp" },
		{ name = "mason" },
		{ name = "friendly-snippets" },
		{ name = "path" },
		{ name = "buffer", keyword_length = 3 },
		{ name = "cmdline" },
	},
	experimental = {
		native_menu = false,
		ghost_text = false,
	},
})
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 etc
