return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd.colorscheme "rose-pine"
      local groups = {
        "Normal", "NormalNC", "NormalFloat", "VertSplit", "WinSeparator", "FloatBorder", "TelescopeBorder"
      }

      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
      end
    end,
  },
}
