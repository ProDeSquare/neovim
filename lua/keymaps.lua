-- leader key
vim.g.mapleader = " "

-- keymaps
local keymap = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

keymap("n", "<leader>w", ":w!<CR>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<Tab>", ">>_", opts)
keymap("n", "<S-Tab>", "<<_", opts)

keymap("v", "<Tab>", ">gv", opts)
keymap("v", "<S-Tab>", "<gv", opts)
keymap("v", "p", '"_dP', opts)
