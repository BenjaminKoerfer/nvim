local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}
local function create_floating_window(opts)
  -- Get the editor dimensions
  local width = vim.o.columns
  local height = vim.o.lines

  -- Default to 80% size if not provided
  local win_width = opts and opts.width or math.floor(width * 0.8)
  local win_height = opts and opts.height or math.floor(height * 0.8)

  -- Calculate the centered position
  local row = math.floor((height - win_height) / 2)
  local col = math.floor((width - win_width) / 2)

  -- Create a scratch buffer
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true)
  end

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = win_width,
    height = win_height,
    row = row,
    col = col,
    style = "minimal",
    border = "single",
  })

  return { buf = buf, win = win }
end

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.term()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})
vim.keymap.set({ "n", "t", "i" }, "<c-t>", "<cmd>Floaterminal<CR>")
