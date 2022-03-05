-- options
local options = {
  title = true,
  exrc = true,
  showmode = false,
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
  termguicolors = true,
  foldcolumn = "2"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
