local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local M = {}

local simple_picker = function()
  local items = { "Apple", "Banana", "Cherry", "Date", "Elderberry" } -- List to search

  pickers.new({}, {
    prompt_title = "Pick a Fruit",
    finder = finders.new_table({ results = items }),
    sorter = conf.generic_sorter({}),
  }):find()
end

simple_picker()

M.setup = function()
end

return M
