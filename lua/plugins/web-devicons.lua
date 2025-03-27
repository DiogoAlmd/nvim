return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      strict = true,
      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = "#f1502f",
          name = "Gitignore"
        }
      },
      override_by_extension = {
        ["js"] = {
          icon = "",
          color = "#f7df1e",
          name = "JavaScript"
        },
        ["ts"] = {
          icon = "󰛦",
          color = "#3178c6",
          name = "TypeScript"
        },
        ["jsx"] = {
          icon = "",
          color = "#61dafb",
          name = "ReactJS"
        },
        ["tsx"] = {
          icon = "",
          color = "#61dafb",
          name = "ReactTS"
        },
        ["vue"] = {
          icon = "󰡄",
          color = "#42b883",
          name = "Vue"
        },
        ["css"] = {
          icon = "",
          color = "#1572b6",
          name = "CSS"
        },
        ["scss"] = {
          icon = "",
          color = "#c6538c",
          name = "SCSS"
        },
        ["html"] = {
          icon = "",
          color = "#e34f26",
          name = "HTML"
        },
        ["lua"] = {
          icon = "",
          color = "#51a0cf",
          name = "Lua"
        },
        ["json"] = {
          icon = "",
          color = "#faa61a",
          name = "JSON"
        },
        ["py"] = {
          icon = "",
          color = "#3776ab",
          name = "Python"
        },
        ["md"] = {
          icon = "",
          color = "#519aba",
          name = "Markdown"
        },
        ["yaml"] = {
          icon = "",
          color = "#6d8086",
          name = "Yaml"
        },
        ["toml"] = {
          icon = "",
          color = "#6d8086",
          name = "Toml"
        },
        ["jpg"] = {
          icon = "",
          color = "#a074c4",
          name = "Jpg"
        },
        ["jpeg"] = {
          icon = "",
          color = "#a074c4",
          name = "Jpeg"
        },
        ["png"] = {
          icon = "",
          color = "#a074c4",
          name = "Png"
        },
        ["svg"] = {
          icon = "",
          color = "#a074c4",
          name = "Svg"
        },
        ["env"] = {
          icon = "",
          color = "#f7df1e",
          name = "Env"
        }
      }
    })
  end
} 