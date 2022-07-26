return {
    -- first key is the mode
    n = {
      -- second key is the lefthand side of the map
      ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
      ["<leader>tP"] = { function() astronvim.toggle_term_cmd("psysh") end, desc = "ToggleTerm PHP" },

      ["<C-S-k>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
      ["<C-S-j>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
      ["<C-S-h>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
      ["<C-S-l>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },

      ["<leader>v"] = { "<cmd>vsplit<CR>", desc = "Vertical split"},

      -- maps.n["e"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" }
      ["<leader>f"] = { function() require("telescope.builtin").find_files() end, desc = "Search files" },
      ['<leader><cr>'] = { function() require("telescope.builtin").oldfiles() end, desc = "Search history" },

      -- Keymaps
      ['<C-p>'] = { "<cmd>Telescope keymaps<CR>", desc = "Legendary" },

      -- TODO change width
      ['??'] = { "<cmd>Cheat40<CR>", desc = "Cheat sheet" },
      ['?'] = { '<cmd>call cheat40#open(0, "$HOME/.config/astronvim/lua/user/CHEATSHEET.md")<CR>', desc = "Custom cheat sheet" },

      ["<leader>e"] = { "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle Explorer" }

    },
    t = {
      -- setting a mapping to false will disable it
      -- ["<esc>"] = false,
    },
  }

