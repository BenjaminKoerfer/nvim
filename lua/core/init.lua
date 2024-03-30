require("core.set")
require("core.remap")
require("core.packer")
require("core.autocmd")
vim.api.nvim_set_var("UltiSnipsSnippetDirectories", { "UltiSnips", "my-snippets" })


function P(stuff)
    print(vim.inspect(stuff))
    return stuff
end
