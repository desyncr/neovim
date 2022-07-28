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
  {"mg979/vim-visual-multi"},
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
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup({
        default_mappings = true
      })
    end
  },
  {
    "kosayoda/nvim-lightbulb",
    config = function()
      require('nvim-lightbulb').setup({autocmd = {enabled = true}})
    end,
    requires = {"antoinemadec/FixCursorHold.nvim"},
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("lsp_signature").setup()
    end
  },
  -- Other
  {
    "ellisonleao/glow.nvim",
    config = function ()
      require("glow").setup()
    end
  },
  { "kkoomen/vim-doge" }
 }

