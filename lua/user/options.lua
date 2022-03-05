-- options
local options = {
  title = true,
  exrc = true,
  cursorline = true,
  backup = false,
  cmdheight = 2,
  hlsearch = false,
  incsearch = true,
  mouse = "a",
  number = true,
  relativenumber = true,
  scrolloff = 8,
  sidescrolloff = 8,
  numberwidth = 6,
  wrap = false,
  swapfile = false,
  fileencoding = "utf-8",
  clipboard = "unnamedplus",
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  smartindent = true,
  splitright = true,
  splitbelow = true,
  completeopt = { "menuone", "noselect" },
  statusline = " %f%=%y %{&fileencoding}[%{&fileformat}] %l,%c %p%% ",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
