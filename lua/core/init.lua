vim.g.maplocalleader = " "
require("core.set")
require("core.remap")
require("core.autocmd")
require("core.lazyinit")
function P(stuff)
	print(vim.inspect(stuff))
	return stuff
end
