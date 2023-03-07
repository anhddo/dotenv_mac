-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'github/copilot.vim'
  use 'lervag/vimtex'
  use 'tpope/vim-fugitive'
  use 'L3MON4D3/LuaSnip'
--  use 'arzg/vim-colors-xcode'
--  use 'catppuccin/nvim'
  use 'projekt0n/github-nvim-theme'
  use 'SirVer/ultisnips'

  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
end)


