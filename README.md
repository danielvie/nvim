# my.nvim config

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

