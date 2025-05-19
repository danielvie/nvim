# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## references

Kickstart
- https://github.com/nvim-lua/kickstart.nvim.git

Mr Jakob
- https://www.youtube.com/watch?v=g1gyYttzxcI

## useful

point nvim to another directory:
```bash
export NVIM_APPNAME=nvim_new_dir
```

```powershell
$env:NVIM_APPNAME = "nvim_new_dir"
```

## clone me

```powershell
git clone https://github.com/danielvie/nvim
```

## Brazilian Spelling

copy the `%LOCALAPPDATA%/nvim/spell/pt.utf-8.spl`
to `{nvim install path}/share/nvim/runtime/spell/`

```vim
set spell
set spelllang=en
```

```vim
set spell
set spelllang=pt
```

## VSCode

Handful keybindings.json 
```json
  // navigation
  {
    "key": "ctrl+y",
    "command": "acceptSelectedSuggestion",
    "when": "suggestWidgetVisible && textInputFocus",
  },
  {
    "key": "alt+x",
    "command": "workbench.action.closeActiveEditor"
  },
  {
    "key": "ctrl+h",
    "command": "workbench.action.focusLeftGroup",
  },
  {
    "key": "ctrl+l",
    "command": "workbench.action.focusRightGroup",
  },
  {
    "key": "ctrl+k",
    "command": "workbench.action.focusAboveGroup",
  },
  {
    "key": "ctrl+j",
    "command": "workbench.action.focusBelowGroup",
  },
  {
    "key": "alt+t",
    "command": "vscode-neovim.send",
    "args": "<a-t>",
    "when": "editorTextFocus && neovim.init"
  }
```

settings.json
```json
{
    "vscode-neovim.neovimExecutablePaths.win32": "C:/SANDBOX/APP/nvim-win64/bin/nvim.exe",
    "extensions.experimental.affinity": {
        "asvetliakov.vscode-neovim": 1
    },
},
```
