return {
  {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
          terminal_colors = true,
          dim_inactive = false,
          styles = {
            comments = "italic",
            keywords = "bold",
            functions = "bold",
            strings = "NONE",
            variables = "NONE",
          },
        },
      })

      vim.cmd("colorscheme carbonfox")
    end,
  },
}
