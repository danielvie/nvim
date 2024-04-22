# Welcome to my dotfiles

If you are new to Lua, I highly recommend checking out [Nanotee's Lua Guide](https://github.com/nanotee/nvim-lua-guide).

- you can find my plugins in ~/.config/nvim/after/plugins
- you can find my customizations in ~/.config/nvim/lua/me

# neovim repo

```bash
git clone --depth=1 https://github.com/neovim/neovim.git
```

# neovim repo - install
```bash
make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/opt/neovim install
```

note: you might need to install `gettext` to conclude the instalation
```bash
sudo apt install gettext
```


# config nvim in git

```bash
git config --global core.editor "nvim"
```

# example `.clangd` for c++

```bash
CompileFlags:
  Add: [ 
    "-std=c++23", 
    "-I/Users/danielvieira/Sandbox/cpp/cpp_expected/src",
    "-arch arm64"
  ]
```
