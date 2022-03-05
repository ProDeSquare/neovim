-- leader key
vim.g.mapleader = " "

-- keymaps
local keymap = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

keymap("n", "<leader>w", ":w!<CR>")

keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

keymap("n", "<Tab>", ">>_")
keymap("n", "<S-Tab>", "<<_")

keymap("n", "S", ":%s//g<Left><Left>")

keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>")
keymap("n", "<C-t>", "<cmd>Telescope live_grep<CR>")

keymap("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap("n", "<leader>f", ":TZAtaraxis l15 r15<CR>")

keymap("v", "<Tab>", ">gv")
keymap("v", "<S-Tab>", "<gv")
keymap("v", "p", '"_dP')

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")
