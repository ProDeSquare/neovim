local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use "numToStr/Comment.nvim"
  use "nvim-treesitter/nvim-treesitter"
  use "kyazdani42/nvim-web-devicons"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "kyazdani42/nvim-tree.lua"
  use "windwp/nvim-autopairs"
  use "Pocco81/TrueZen.nvim"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{ "nvim-lua/plenary.nvim" }}
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
