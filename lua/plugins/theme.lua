return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("kanagawa")
    end,
  },
} 