local options = {
  ma = true,
  mouse = "a",
  cursorline = true,
  tabstop = 4,
  shiftwidth = 4,
  softtabstop = 4,
  expandtab = true,
  autoread = true,
  nu = true,
  rnu = true,
  foldlevelstart = 99,
  scrolloff = 7,
  backup = false,
  writebackup = false,
  swapfile = false,
  showmode = false,
  ignorecase = true,
  wrap = false,
  clipboard = "unnamedplus",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
