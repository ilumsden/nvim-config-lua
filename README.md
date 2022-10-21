# My Personal Lua-Based Config for Neovim

To use this config, simply copy the contents of this repo into your Neovim config path (usually `$HOME/.config/nvim` on POSIX systems).

## Breakdown of Files

To simplify editing, this config is broken down into several files and subdirectories:
* `init.lua`: entry point into the config. Sets "leader", sets packpath, and loads the other parts of the config
* `vars.lua`: sets variables (e.g., global, buffer, window, etc.) using `vim.g`, `vim.b`, `vim.w`, etc.
* `opts.lua`: sets overall Neovim configurations. If you're familiar with Vimscript, this file is meant to contain the equivalent of `set` commands
* `plugs.lua`: provides the logic to install and/or configure Packer.nvim (plugin manager). Add plugins in the `packer.startup` call at the end of this file
* `user_plugs.lua`: loads the files in the `plug_configs` subdirectory
* `plug_configs/`: each file in this directory defines the setup/configuration for a particular plugin
* `map.lua`: sets key mappings`

## Adding Plugins

To add a plugin to this config, there are 3 steps:
1. Add the Packer `use` directive to the `packer.startup` call at the end of `plugs.lua`
2. Create a file in `plug_configs/` that calls the plugin's `setup` directive and performs any other configuration
3. Add a `require` statement to `user_plugs.lua` to load your file in `plug_confgs/`
