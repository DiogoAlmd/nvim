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
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = false,
          theme = "auto",
          component_separators = "",
          section_separators = "",
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = {},
          lualine_c = { "branch" },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
      })
    end,
  },
}
