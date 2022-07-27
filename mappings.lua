return {
    -- Normal mode {{{
    n = {
        -- second key is the lefthand side of the map
        ["<leader>tP"] = { function() astronvim.toggle_term_cmd("psysh") end, desc = "ToggleTerm PHP" },

        -- Splits {{{
            -- Create splits
            ["<leader>v"] = { "<cmd>vsplit<CR>", desc = "Vertical split"},
            ["<leader>n"] = { "<cmd>vsplit<CR>", desc = "Vertical split"},
            ["<leader>h"] = { "<cmd>split<CR>", desc = "Horizontal split"},

            -- Resize splits
            ["<A-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
            ["<A-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
            ["<A-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
            ["<A-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },

            -- Cursor movements
            ["<tab>"] = { "<C-W><C-W>", desc = "Move between splits"},

            ["<S-l>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Buffer next"},
            ["<S-h>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Buffer previous"},

            -- Move splits
            ["<C-h>"] = { "<C-W>H", desc = "Move to the left split"},
            ["<C-j>"] = { "<C-W>J", desc = "Move to the below split"},
            ["<C-k>"] = { "<C-W>K", desc = "Move to the above split"},
            ["<C-l>"] = { "<C-W>L", desc = "Move to the right split"},

            -- remap join lines
            ["<C-j>"] = { "<cmd>join<CR>", desc = "Join lines"},
        --- }}}

        ["<leader>nl"] = { "<cmd>nohlsearch<cr>", desc = "No highlight"},

        -- maps.n["e"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" }
        ["<leader>f"] = { function() require("telescope.builtin").find_files() end, desc = "Search files" },
        ["<leader><cr>"] = { function() require("telescope.builtin").oldfiles() end, desc = "Search history" },

        -- Keymaps
        ["<C-p>"] = { function() require("telescope.builtin").keymaps() end, desc = "Legendary" },

        -- TODO change width
        ["??"] = { "<cmd>Cheat40<CR>", desc = "Cheat sheet" },
        ["?"] = { "<cmd>call cheat40#open(0, '$HOME/.config/astronvim/lua/user/CHEATSHEET.txt')<CR>", desc = "Custom cheat sheet" },

        ["<leader>e"] = { "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle Explorer" },

        ["<leader>m"] = { "<cmd>FocusMaxOrEqual<CR>", desc = "Toggle Maximize split" }

    },
    --- }}}
    --- Term mode {{{
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    },
    --- }}}
}

