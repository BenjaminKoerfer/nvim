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
      --------------------------------------------
      --- LUA ------------------------------------
      --------------------------------------------
      ls.add_snippets("lua", {
        s(
          "choice",
          c(1, {
            t("one"),
            t("two"),
            t("three"),
            i(""),
          })
        ),
        s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1) })),
        s("map", fmt("vim.keymap.set(\"{}\", \"{}\", {})", { i(1, "mode"), i(2, "map"), i(3, "command") })),
      })
      ls.add_snippets("all", {
        s(
          "date",
          f(function()
            return os.date("%Y-%m-%d")
          end, {})
        ),
      })

      --------------------------------------------
      --- JAVA -----------------------------------
      --------------------------------------------
      ls.add_snippets("java", {
        ls.parser.parse_snippet("main", "public static void main(String[] args) {\n\t$0\n}"),
        s(
          "if",
          fmt("if ({}) {{\n\t{}\n}}", {
            i(1, ""),
            i(2, ""),
          })
        ),
        s(
          "method",
          fmt("{}{}{} {}({}){{\n\t{}\n}}", { -- spacing is important
            c(1, {
              t("public "),
              t("private "),
              t("protected "),
            }),
            c(2, {
              t("static "),
              t(""),
            }),
            i(3, "void"),
            i(4, "name"),
            i(5, ""),
            i(6, ""),
          })
        ),
        s(
          "sout",
          fmt("System.out.println({});", {
            i(1, "text"),
          })
        ),
        s(
          "randarr",
          fmt("for (int i = 0; i < {}; i++) {{\n\t{}[i] = (int) (Math.random() * {});\n}}", {
            i(1, "length"),
            i(2, "array"),
            i(3, "max"),
          })
        ),
        s(
          "newrandarr",
          fmt(
            "int[] {} = new int[{}];\nfor (int i = 0; i < {}; i++) {{\n\t{}[i] = (int) (Math.random() * {});\n}}",
            {
              i(1, "name"),
              i(2, "length"),
              rep(2, "length"),
              rep(1, "name"),
              i(3, "max"),
            }
          )
        ),
        s(
          "rand",
          fmt("int {} = (int) (Math.random() * {});", {
            i(1, "name"),
            i(2, "max"),
          })
        ),
      })
    end,
  }
}
