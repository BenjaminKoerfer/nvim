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
  local buf = vim.api.nvim_create_buf(false, true)

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = win_width,
    height = win_height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })

  return buf, win
end

--local buf, win = create_floating_window()
