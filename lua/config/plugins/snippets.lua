return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    build = "make install_jsregexp",
    config = function()
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node
      local f = ls.function_node
      local c = ls.choice_node
      local p = ls.parser
      local ii = ls.insert
      local tt = ls.text
      local extras = require("luasnip.extras")
      local fmt = require("luasnip.extras.fmt").fmt
      local rep = require("luasnip.extras").rep
      local sn = require("luasnip.util.functions").sn
      ls.add_snippets("lua", {
        s(
          "choice",
          c(1, {
            t("one"),
            t("two"),
            t("three"),
          })
        ),
        s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1) })),
      })
      ls.add_snippets("all", {
        s(
          "date",
          f(function(_, _)
            return os.date("%Y-%m-%d")
          end, {})
        ),
      })
    end,
  }
}
