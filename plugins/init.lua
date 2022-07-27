return {
  -- General
  {"desyncr/vim-cheat40"},
  {"junegunn/vim-easy-align"},
  {"preservim/vim-pencil"},
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
        lastplace_open_folds = true,
      })
    end
  },
  -- Visual
  {
    "b0o/incline.nvim",
    config = function()
      require("incline").setup()
    end
  },
  {
    "VonHeikemen/searchbox.nvim",
    config = function ()
      vim.keymap.set("n", "<leader>s", ":SearchBoxIncSearch<CR>")
    end,
    requires = { "MunifTanjim/nui.nvim" }
  },
  {
    "gelguy/wilder.nvim",
    event = "BufRead",
    requires = {"romgrk/fzy-lua-native"},
    config = function() require "user.plugins.wilder" end
  },
  -- {
  --   "Pocco81/TrueZen.nvim",
  --   config = function ()
  --     require("true-zen").setup()
  --   end
  -- },
  {
    "dstein64/nvim-scrollview",
    config = function ()
      require("scrollview").setup()
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
  -- Files
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
    "nvim-telescope/telescope-fzy-native.nvim",
    requires = {"romgrk/fzy-lua-native"},
    config = function ()
      require("telescope").load_extension("fzy_native")
    end
  },
  -- Other
  {
    "praem90/nvim-phpcsf",
    config = function ()
      require("phpcs").cs()
      require("phpcs").cbf()
    end
  },
  {
    "ellisonleao/glow.nvim",
    config = function ()
      require("glow").setup()
    end
  }
 }

