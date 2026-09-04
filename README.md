# nvim

Personal [Neovim](https://neovim.io/) configuration, built on [LazyVim](https://www.lazyvim.org/).

## Structure

- `init.lua`: bootstraps `lazy.nvim` / LazyVim.
- `lua/config/options.lua`: options overriding LazyVim defaults.
- `lua/config/keymaps.lua`: custom keymaps (in addition to LazyVim's defaults).
- `lua/config/autocmds.lua`: custom autocmds (in addition to LazyVim's defaults).
- `lua/plugins/`: custom plugin specs and overrides for LazyVim's defaults.
- `lazyvim.json`: enabled [LazyVim extras](https://www.lazyvim.org/extras).

## Extras enabled

- `ai.claudecode`, `ai.copilot`
- `lang.docker`, `lang.go`, `lang.json`, `lang.markdown`, `lang.php`

## Custom plugins

- [`argonaut.nvim`](https://git.sr.ht/~foosoft/argonaut.nvim): toggle wrapping of function arguments (`<leader>aw`).
- [`vim-visual-multi`](https://github.com/mg979/vim-visual-multi): multiple cursors. `Ctrl+n`.

## Install

```
git clone git@github.com:desyncr/nvim.git ~/.config/nvim
```

Requires Neovim >= 0.9 (check `lazyvim.json`'s `install_version` for the LazyVim version this was set up against). See the [LazyVim installation docs](https://www.lazyvim.org/installation) for further dependencies (a Nerd Font, ripgrep, fd, etc.).
