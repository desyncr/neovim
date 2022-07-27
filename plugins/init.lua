return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },

  -- You can also add new plugins here as well:
  -- { "andweeb/presence.nvim" },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --    ["mrjones2014/legendary.nvim"] = {},
  {"desyncr/vim-cheat40"},
  {"junegunn/vim-easy-align"},
  -- {"junegunn/goyo.vim"},
  {"preservim/vim-pencil"},
  {
    "b0o/incline.nvim",
    config = function()
      require('incline').setup()
    end
  },
  {
    'VonHeikemen/searchbox.nvim',
    config = function ()
      vim.keymap.set('n', '<leader>s', ':SearchBoxIncSearch<CR>')
    end
  },
  {'MunifTanjim/nui.nvim'},
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function() require "user.plugins.nvim-lastplace" end
  },
  {
    "romgrk/fzy-lua-native",
    config = function() require "fzy-lua-native" end
  },
  {
    "gelguy/wilder.nvim",
    event = "BufRead",
    config = function() require "user.plugins.wilder" end
  },
  -- {
  --   "ahmedkhalf/project.nvim",
  --   config = function()
  --     require("project_nvim").setup {
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       -- refer to the configuration section below
  --       -- require('telescope').load_extension('projects')
  --     }
  --   end
  -- },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup({
        view = {
          side = "right"
        }
      })
    end
  },
  {
    "Pocco81/TrueZen.nvim",
    config = function ()
      require('true-zen').setup()
    end
  },
  {
    "praem90/nvim-phpcsf",
    config = function ()
      require('phpcs').cs()
      require('phpcs').cbf()
    end
  },
  {
    "dstein64/nvim-scrollview",
    config = function ()
      require('scrollview').setup({})
    end
  },
  {
    "beauwilliams/focus.nvim",
    config = function()
      require("focus").setup({
        autoresize = false
      })
    end
  },
  {
    "nvim-telescope/telescope-fzy-native.nvim",
    config = function ()
      require('telescope').load_extension('fzy_native')
    end
  }
 }

