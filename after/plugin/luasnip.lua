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

--------------------------------------------------------
-- AUTOSNIPPETS
--------------------------------------------------------

-- parser is used for VS**** style snippets.
ls.add_snippets("lua", {
	ls.parser.parse_snippet("expand", "-- this is what expand does"),

	ls.parser.parse_snippet("lf", "local $1 = funktion($2)\n\t$0\nend,"),

	s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1) })),

	s(
		"choice",
		c(1, {
			t("one"),
			t("two"),
			t("three"),
		})
	),
})
ls.add_snippets("all", {
	s(
		"date",
		f(function(_, _)
			return os.date("%Y-%m-%d")
		end, {})
	),
})

-- latex snippets
ls.add_snippets("tex", {
	-- autosnippet

	-- text
	s("OBdA", t("Ohne Beschränkung der Allgemeinheit")),
	s("oBdA", t("ohne Beschränkung der Allgemeinheit")),
	-- mathmode
	s(
		{ trig = "dm", snippetType = "autosnippet", dscr = "display math" },
		fmt(
			[[
    <>
    <>
    <>]],
			{ t("\\["), i(1), t("\\]") },
			{ delimiters = "<>" }
		)
	),
	s(
		{ trig = "//", snippetType = "autosnippet", dscr = "fraction" },
		fmt([[\frac{<>}{<>}]], { i(1), i(2) }, { delimiters = "<>" })
	),

	ls.parser.parse_snippet(
		"lorem",
		"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse"
	),

	-- begin/end
	ls.parser.parse_snippet("ali*", "\\begin{align*}\n\t$1\n\\end{align*}"),
	ls.parser.parse_snippet("begin", "\\begin{$1}\n\t$2\n\\end{$1}"),

	-- text
	ls.parser.parse_snippet("section", "\\section{$1}\n\t$0"),
	ls.parser.parse_snippet("chapter", "\\chapter{$1}\n\t$0"),
	ls.parser.parse_snippet("subsection", "\\subsection{$1}\n\t$0"),
	ls.parser.parse_snippet("subsubsection", "\\subsubsection{$1}\n\t$0"),
	ls.parser.parse_snippet("paragraph", "\\paragraph{$1}\n\t$0"),
	ls.parser.parse_snippet("subparagraph", "\\subparagraph{$1}\n\t$0"),

	-- standard
	ls.parser.parse_snippet("document", "\\documentclass{$1}\n\n\\begin{document}\n\t$0\n\\end{document}"),

	-- input
	ls.parser.parse_snippet("template", "\\input{preamble}\n\\input{macros}\n\\input{letterfonts}"),

	-- Kommentare
	ls.parser.parse_snippet("Quelle", "\\begin{flushright}\n\t\\tiny{Quelle: $1}\n\\end{flushright}"),
	-- listen
	s(
		"enumerate",
		fmt(
			"\\begin{enumerate}<>\n\t\\item <>\n\\end{enumerate}",
			{ c(1, { t(""), t("[label=\\alph*)]") }), i(2) },
			{ delimiters = "<>" }
		)
	),
})
--------------------------------------------------------
-- JAVA
--------------------------------------------------------
ls.add_snippets("java", {
	ls.parser.parse_snippet("main", "public static void main(String[] args) {\n\t$0\n}"),
	s(
		"class",
		fmt("public class {} {{\n\t{}\n}}", {
			i(1, "name"),
			i(0, ""),
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
		fmt("int[] {} = new int[{}];\nfor (int i = 0; i < {}; i++) {{\n\t{}[i] = (int) (Math.random() * {});\n}}", {
			i(1, "name"),
			i(2, "length"),
			rep(2, "length"),
			rep(1, "name"),
			i(3, "max"),
		})
	),
	s(
		"rand",
		fmt("int {} = (int) (Math.random() * {});", {
			i(1, "name"),
			i(2, "max"),
		})
	),
})
--------------------------------------------------------
-- C
--------------------------------------------------------
ls.add_snippets("c", {
	s(
		"main",
		fmt("int main() {{\n\t{}\n}}", {
			i(1, ""),
		})
	),
})
