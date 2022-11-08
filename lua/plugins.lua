vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'neovim/nvim-lspconfig'
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use "nvim-lua/plenary.nvim"
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  use {'dracula/vim', as = 'dracula'}
end)
