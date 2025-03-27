return {
  {
    "blazkowolf/gruber-darker.nvim",
    name = "gruber-darker",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruber-darker").setup({
        -- You can add any theme customization here
        transparent = false,
        bold = true,
        italic = {
          strings = true,
          comments = true,
          operators = false,
          folds = true,
        },
      })
      vim.cmd.colorscheme("gruber-darker")
    end,
  },
}