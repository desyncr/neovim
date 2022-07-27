# Neovim configuration

Personal neovim configuration for Astronvim.

![Screenshot](https://github.com/desyncr/neovim/blob/master/screenshot.png?raw=true)

## Install

This repository follows the installation structure described in [Managing User Configuration](https://astronvim.github.io/configuration/manage_user_config) section of the [AstroNvim documentation](https://astronvim.github.io/).

The structure I'm using looks as follows:

```
$ tree ~/.config
.
├── astronvim
│   └── lua
├── nvim
│   ├── init.lua
│   ├── lua

```

AstroNvim repository will be cloned in `nvim`. This directory should not be modified.
All personal configurations should be located in `astronvim`.


### Install AstroNvim

- Backup previous nvim configurations:


```
$ mv ~/.config/nvim ~/.config/nvim.bak
$ mv ~/.local/share/nvim/site ~/.local/share/nvim/site.bak
```


- Clone repository:
```
$ git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```


- Sync plugins:

```
$ nvim +PackerSync +qall
```

### Install personal configurations

- Create directory structure:

```
$ mkdir -p ~/.config/astronvim/lua
```

- Clone this repository:

```
$ git clone git@github.com:desyncr/neovim.git ~/.config/astronvim/lua/user
```

- Sync plugins:

```
$ nvim +PackerSync +qall
```

## Structure

- `init.lua`: General AstroNvim configurations such as updater's channel, theme, [Alpha's dashboard](https://github.com/goolord/alpha-nvim) header.
- `mappings.lua`: All custom key mappings.
- `options.lua`: General custom vim options, such as wrap, fold method, linebreak.
- `plugins/init.lua`: All custom plugins.

## Plugins

Custom plugins:

### General
- `desyncr/vim-cheat40`: Custom cheatsheets
- `junegunn/vim-easy-align`: Easy align
- `preservim/vim-pencil`: Better writting mode
- `ethanholz/nvim-lastplace`: Remember last place

### Visual
- `b0o/incline.nvim`: Split line
- `VonHeikemen/searchbox.nvim`, requires: `MunifTanjim/nui.nvim`: Better search position/box
- `gelguy/wilder.nvim`, requires: `romgrk/fzy-lua-native`: Better command and search mode
- `Pocco81/TrueZen.nvim`: Zen mode
- `dstein64/nvim-scrollview`: Scroll bars
- `beauwilliams/focus.nvim`: Zoom and focus on splits

### Files
- `kyazdani42/nvim-tree.lua`: Better tree view
- `nvim-telescope/telescope-fzy-native.nvim`: Faster fuzzy searching

### Other
- `praem90/nvim-phpcsf`: PHP CS fixer integration
- `ellisonleao/glow.nvim`: Markdown preview in vim


## Dependencies

- Telescope might require [`ripgrep`](https://github.com/BurntSushi/ripgrep)
- `glow.nvim` requires [`glow` binary](https://github.com/charmbracelet/glow)
- `lazygit.nvim` requires [`lazygit`](https://github.com/jesseduffield/lazygit)


