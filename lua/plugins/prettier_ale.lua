-- lua/plugins/prettier_ale.lua

return {
    {
      'prettier/vim-prettier',
      run = 'npm install',
      cmd = "Prettier",
    },
    -- {
    --   'dense-analysis/ale',
    --   config = function()
    --     vim.g.ale_linters = {
    --       javascript = {'eslint'},
    --       typescript = {'eslint'},
    --       javascriptreact = {'eslint'},
    --       typescriptreact = {'eslint'},
    --     }
        
    --     vim.g.ale_fixers = {
    --       javascript = {'eslint'},
    --       typescript = {'eslint'},
    --       javascriptreact = {'eslint'},
    --       typescriptreact = {'eslint'},
    --     }
        
    --     vim.g.ale_fix_on_save = 1
    --   end
    -- }
  }
  