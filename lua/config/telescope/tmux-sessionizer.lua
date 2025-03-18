local pickers = require 'telescope.pickers'
local finders = require 'telescope.finders'
local make_entry = require 'telescope.make_entry'
local conf = require 'telescope.config'.values
local actions = require 'telescope.actions'
local M = {}

local tmux_sessionizer = function(opts)
  opts = opts or {}
  opts.cwd = opts.cwd or vim.uv.cwd()

  local finder = finders.new_async_job {
    command_generator = function(prompt)
      if not prompt or prompt == "" then
        return nil
      end

      local paths = { '~/notes', '~/mathe', '~/.config', '~/personal', '~/work/plugins', '~/work', '~/', '~/Desktop/' }
      local args = { "find" }
      return vim.tbl_flatten {
        args,
        paths,
        { '-mindepth 0', '-maxdepth 1', '-type d', '| rg', prompt },
      }
    end,
    entry_maker = make_entry.gen_from_vimgrep(opts),
    cwd = opts.cwd,
  }

  pickers.new(opts, {
    debounce = 100,
    prompt_title = "sessionizer",
    finder = finder,
    sorter = require("telescope.sorters").empty(),
    attach_mappings = function(prompt_bufnr, map)
      local function execute_command()
        -- local selection = require("telescope.actions.state").get_selected_entry()
        -- if selection then
        -- Run your shell command with the selected entry
        -- vim.cmd("silent !tmux new-session -A -s " .. vim.fn.shellescape(selection.value))
        -- end
        vim.cmd('echo "test"')
        actions.close(prompt_bufnr) -- Close Telescope
      end

      map("i", "<CR>", execute_command)
      map("n", "<CR>", execute_command)

      return true -- Allow other mappings to continue working
    end,
  }):find()
end

M.setup = function()
end

tmux_sessionizer()

return M
